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

import org.hibernate.Query;
import org.orm.PersistentException;
import org.orm.PersistentSession;

import java.util.List;

public class UserDAO {
    public static User loadUserByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadUserByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User getUserByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getUserByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadUserByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User getUserByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getUserByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (User) session.load(User.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User getUserByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (User) session.get(User.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (User) session.load(User.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User getUserByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (User) session.get(User.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryUser(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryUser(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryUser(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryUser(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User[] listUserByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listUserByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User[] listUserByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listUserByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryUser(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.User as User");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryUser(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.User as User");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("User", lockMode);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User[] listUserByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        try {
            List list = queryUser(session, condition, orderBy);
            return (User[]) list.toArray(new User[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User[] listUserByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            List list = queryUser(session, condition, orderBy, lockMode);
            return (User[]) list.toArray(new User[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadUserByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadUserByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        User[] users = listUserByQuery(session, condition, orderBy);
        if (users != null && users.length > 0)
            return users[0];
        else
            return null;
    }

    public static User loadUserByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        User[] users = listUserByQuery(session, condition, orderBy, lockMode);
        if (users != null && users.length > 0)
            return users[0];
        else
            return null;
    }

    public static java.util.Iterator iterateUserByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iterateUserByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateUserByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iterateUserByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateUserByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.User as User");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            return query.iterate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateUserByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.User as User");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("User", lockMode);
            return query.iterate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User createUser() {
        return new User();
    }

    public static boolean save(User user) throws PersistentException {
        try {
            GamePersistentManager.instance().saveObject(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean delete(User user) throws PersistentException {
        try {
            GamePersistentManager.instance().deleteObject(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean refresh(User user) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().refresh(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean evict(User user) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().evict(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static User loadUserByCriteria(UserCriteria userCriteria) {
        User[] users = listUserByCriteria(userCriteria);
        if (users == null || users.length == 0) {
            return null;
        }
        return users[0];
    }

    public static User[] listUserByCriteria(UserCriteria userCriteria) {
        return userCriteria.listUser();
    }
}
