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

public class Platform {
    private int Id;
    private String name;
    private int year;
    private String description;
    private String manufacturer;

    public Platform() {
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String value) {
        this.description = value;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String value) {
        this.manufacturer = value;
    }

    public String toString() {
        return String.valueOf(getId());
    }

}
