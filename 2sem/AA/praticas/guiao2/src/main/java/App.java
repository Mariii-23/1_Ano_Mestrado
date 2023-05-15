
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Query;
import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;



public class App
{
    public static void main( String[] args )
    {
        try{
            Configuration cfg = new Configuration()
                    .configure(new File("./hibernate.cfg.xml"))
                    .addAnnotatedClass(User.class)
                    .addAnnotatedClass(Game.class)
                    .addAnnotatedClass(Platform.class);
            StandardServiceRegistry sr = new StandardServiceRegistryBuilder()
                    .applySettings(cfg.getProperties()).build();

            SessionFactory sf = cfg.buildSessionFactory(sr);

            Session s = sf.openSession();
            s.setHibernateFlushMode(FlushMode.COMMIT);

            Transaction t = s.beginTransaction();

            Platform p = s.get(Platform.class, 1);

            //Game g = s.get(Game.class, 1);

            Game g2 = new Game();
            g2.setName("Arroz");
            g2.setYear(2010);
            g2.setPrice(1000);
            g2.setDescription("Arroz é bom");
            g2.setPlatform(p);
            s.persist(g2);

            List<Game> games = new ArrayList<>();
            games.add(g2);

            User u = new User();
            u.setName("Mariana");
            u.setEmail("Mariana@email.com");
            u.setPassword("1234");
            u.setGames(games);
            s.persist(u);

            try{
                t.commit();
            }catch(Exception e){
                t.rollback();
                e.printStackTrace();
                System.out.println("Unable to commit changes");
            }


            Query query = s.createQuery("from Game g, Platform p where g.platform = p and p.year = 2010");
            List results = ((org.hibernate.query.Query<?>) query).list();
//index 0 - Game; index 1 - Platform
            Object[] os = (Object[]) results.get(0);
//cast
            Game g = (Game) os[0];
            System.out.println(g.getTitle());

            s.close();
            StandardServiceRegistryBuilder.destroy(sr);

        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Unable to connect to database");

        }
    }
}
