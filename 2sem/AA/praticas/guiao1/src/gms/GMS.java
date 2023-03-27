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

public class GMS {
    private int Id;
    private java.util.Set ORM_user = new java.util.HashSet();
    org.orm.util.ORMAdapter _ormAdapter = new org.orm.util.AbstractORMAdapter() {
        public java.util.Set getSet(int key) {
            return this_getSet(key);
        }

    };
    public final UserSetCollection user = new UserSetCollection(this, _ormAdapter, ORMConstants.KEY_GMS_USER, ORMConstants.KEY_MUL_ONE_TO_MANY);

    public GMS() {
    }

    private java.util.Set this_getSet(int key) {
        if (key == ORMConstants.KEY_GMS_USER) {
            return ORM_user;
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

    private java.util.Set getORM_User() {
        return ORM_user;
    }

    private void setORM_User(java.util.Set value) {
        this.ORM_user = value;
    }

    public String toString() {
        return String.valueOf(getId());
    }

}
