package abd;
import java.sql.*;
import java.util.*;
import java.util.stream.IntStream;

public class Workload {

    private static Random random = new Random();
    private static char[] chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    private static String randomString(int n) {
        return IntStream.range(0, n)
                .mapToObj(x -> chars[random.nextInt(chars.length)])
                .map(x -> x.toString())
                .reduce((acc, x) -> acc + x)
                .get();
    }


    public static void populate(Random rand, Connection c, int scale) throws Exception {
        // Create schema
        Statement s = c.createStatement();
        s.executeUpdate("create table if not exists client (id int, name varchar, address varchar, data text)");
        s.executeUpdate("create table if not exists product (id int, description varchar, data text)");
        s.executeUpdate("create table if not exists invoice (id serial, productid int, clientid int, data text)");
        // Delete old data
        s.executeUpdate("delete from client");
        s.executeUpdate("delete from product");
        s.executeUpdate("delete from invoice");
        s.close();

        // Insert data
        PreparedStatement insertClient = c.prepareStatement("insert into client values (?, ?, ?, ?)");
        PreparedStatement insertProduct = c.prepareStatement("insert into product values (?, ?, ?)");
        c.setAutoCommit(false); // Autocommit off to execute inserts in a single transaction to reduce overhead
        for (int i = 0; i < Math.pow(2, scale); i++) {
            insertClient.setInt(1, i); // id
            insertClient.setString(2, "client-" + i); // name
            insertClient.setString(3, "address-" + i); // address
            insertClient.setString(4, randomString(1000)); // data
            insertClient.addBatch();

            insertProduct.setInt(1, i); // id
            insertProduct.setString(2, "description-" + i); // description
            insertProduct.setString(3, randomString(1000)); // data
            insertProduct.addBatch();
        }
        insertClient.executeBatch();
        insertProduct.executeBatch();
        c.commit(); // commit must be called manually since autocommit is off

        insertClient.close();
        insertProduct.close();
    }


    private final Random rand;
    private final Connection c;
    private PreparedStatement addInvoice;
    private PreparedStatement clientProducts;
    private PreparedStatement topProducts;
    private int scale;


    public Workload(Random rand, Connection c, int scale) throws Exception {
        this.rand = rand;
        this.c = c;
        this.scale = scale;

        c.setAutoCommit(false); // autocommit = off to execute operations inside a transaction

        // create prepared statements

        addInvoice = c.prepareStatement(
                "insert into invoice (productid, clientid, data) values (?, ?, ?)");

        clientProducts = c.prepareStatement(
                "select p.id " +
                "from product p " +
                "join invoice i on i.productid = p.id " +
                "where i.clientid = ?");

        topProducts = c.prepareStatement(
                "select p.id, count(i.id) " +
                "from product p " +
                "join invoice i on i.productid = p.id " +
                "group by p.id " +
                "order by count(i.id) desc " +
                "limit 10");
    }


    private void sell() throws SQLException {
        int clientId = random.nextInt((int) Math.pow(2, scale));
        int productId = random.nextInt((int) Math.pow(2, scale));
        addInvoice.setInt(1, productId);
        addInvoice.setInt(2, clientId);
        addInvoice.setString(3, randomString(1000));
        addInvoice.executeUpdate(); // executeUpdate when performing writes
        c.commit();
    }


    private List<Integer> account() throws SQLException {
        int clientId = random.nextInt((int) Math.pow(2, scale));
        List<Integer> products = new ArrayList<>();
        clientProducts.setInt(1, clientId);
        ResultSet rs = clientProducts.executeQuery(); // executeQuery when performing reads

        while (rs.next()) { // since this returns a cursor, we must use rs.next() to retrieve the data
            products.add(rs.getInt(1));
        }

        return products;
    }


    private Map<Integer, Integer> top10() throws SQLException {
        Map<Integer, Integer> top = new HashMap<>();
        ResultSet rs = topProducts.executeQuery();

        while (rs.next()) {
            top.put(rs.getInt(1), rs.getInt(2));
        }

        return top;
    }


    public void transaction() throws Exception {
        int x = rand.nextInt(100);
        if (x <= 50) {
            sell();
        }
        else if (x <= 75) {
            account();
        }
        else {
            top10();
        }
    }
}
