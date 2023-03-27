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

import org.orm.PersistentException;
import org.orm.PersistentManager;

public class UserSetCollection extends org.orm.util.ORMSet {
    public UserSetCollection(Object owner, org.orm.util.ORMAdapter adapter, int ownerKey, int targetKey, int collType) {
        super(owner, adapter, ownerKey, targetKey, true, collType);
    }

    public UserSetCollection(Object owner, org.orm.util.ORMAdapter adapter, int ownerKey, int collType) {
        super(owner, adapter, ownerKey, -1, false, collType);
    }

    /**
     * Return an iterator over the persistent objects
     * @return The persistent objects iterator
     */
    public java.util.Iterator getIterator() {
        return super.getIterator(_ownerAdapter);
    }

    /**
     * Add the specified persistent object to ORMSet
     * @param value the persistent object
     */
    public void add(User value) {
        if (value != null) {
            super.add(value, null);
        }
    }

    /**
     * Remove the specified persistent object from ORMSet
     * @param value the persistent object
     */
    public void remove(User value) {
        super.remove(value, null);
    }

    /**
     * Return true if ORMSet contains the specified persistent object
     * @param value the persistent object
     * @return True if this contains the specified persistent object
     */
    public boolean contains(User value) {
        return super.contains(value);
    }

    /**
     * Return an array containing all of the persistent objects in ORMSet
     * @return The persistent objects array
     */
    public User[] toArray() {
        return (User[]) super.toArray(new User[size()]);
    }

    /**
     * Return an sorted array containing all of the persistent objects in ORMSet
     * @param propertyName Name of the property for sorting:<ul>
     * <li>Id</li>
     * <li>name</li>
     * <li>email</li>
     * <li>password</li>
     * </ul>
     * @return The persistent objects sorted array
     */
    public User[] toArray(String propertyName) {
        return toArray(propertyName, true);
    }

    /**
     * Return an sorted array containing all of the persistent objects in ORMSet
     * @param propertyName Name of the property for sorting:<ul>
     * <li>Id</li>
     * <li>name</li>
     * <li>email</li>
     * <li>password</li>
     * </ul>
     * @param ascending true for ascending, false for descending
     * @return The persistent objects sorted array
     */
    public User[] toArray(String propertyName, boolean ascending) {
        return (User[]) super.toArray(new User[size()], propertyName, ascending);
    }

    protected PersistentManager getPersistentManager() throws PersistentException {
        return GamePersistentManager.instance();
    }

}

