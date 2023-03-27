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

public class User {
    private int Id;
    private String name;
    private String email;
    private String password;
    private java.util.Set ORM_game = new java.util.HashSet();
    org.orm.util.ORMAdapter _ormAdapter = new org.orm.util.AbstractORMAdapter() {
        public java.util.Set getSet(int key) {
            return this_getSet(key);
        }

    };
    public final GameSetCollection game = new GameSetCollection(this, _ormAdapter, ORMConstants.KEY_USER_GAME, ORMConstants.KEY_MUL_ONE_TO_MANY);

    public User() {
    }

    private java.util.Set this_getSet(int key) {
        if (key == ORMConstants.KEY_USER_GAME) {
            return ORM_game;
        }

        return null;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String value) {
        this.email = value;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String value) {
        this.password = value;
    }

    private java.util.Set getORM_Game() {
        return ORM_game;
    }

    private void setORM_Game(java.util.Set value) {
        this.ORM_game = value;
    }

    public String toString() {
        return String.valueOf(getId());
    }

}
