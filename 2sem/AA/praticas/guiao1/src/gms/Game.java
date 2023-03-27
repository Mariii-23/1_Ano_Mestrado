/**
 * "Visual Paradigm: DO NOT MODIFY THIS FILE!"
 * <p>
 * This is an automatic generated file. It will be regenerated every time
 * you generate persistence class.
 * <p>
 * Modifying its content may cause the program not work, or your work may lost.
 * <p>
 * Licensee: Mariana Dinis Rodrigues(Universidade do Minho)
 * License Type: Academic
 */

/**
 * Licensee: Mariana Dinis Rodrigues(Universidade do Minho)
 * License Type: Academic
 */
package src.gms;

public class Game {
    private int Id;
    private Platform platform;
    org.orm.util.ORMAdapter _ormAdapter = new org.orm.util.AbstractORMAdapter() {
        public void setOwner(Object owner, int key) {
            this_setOwner(owner, key);
        }

    };
    private String name;
    private int year;
    private double price;
    private String description;

    public Game() {
    }

    public Game(String name, int year, double price, String description) {
        this.name = name;
        this.year = year;
        this.price = price;
        this.description = description;
    }

    private void this_setOwner(Object owner, int key) {
        if (key == ORMConstants.KEY_GAME_PLATFORM) {
            this.platform = (Platform) owner;
        }
    }

    public int getId() {
        return Id;
    }

    private void setId(int value) {
        this.Id = value;
    }

    public int getORMID() {
        return getId();
    }

    public String getName() {
        return name;
    }

    public void setName(String value) {
        this.name = value;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int value) {
        this.year = value;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double value) {
        this.price = value;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String value) {
        this.description = value;
    }

    public Platform getPlatform() {
        return platform;
    }

    public void setPlatform(Platform value) {
        this.platform = value;
    }

    public String toString() {
        return String.valueOf(getId());
    }

}
