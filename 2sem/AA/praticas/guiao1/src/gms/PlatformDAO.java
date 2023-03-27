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

public class PlatformDAO {
    public static Platform loadPlatformByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadPlatformByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform getPlatformByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getPlatformByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadPlatformByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform getPlatformByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getPlatformByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (Platform) session.load(Platform.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform getPlatformByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (Platform) session.get(Platform.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (Platform) session.load(Platform.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform getPlatformByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (Platform) session.get(Platform.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryPlatform(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryPlatform(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryPlatform(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryPlatform(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform[] listPlatformByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listPlatformByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform[] listPlatformByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listPlatformByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryPlatform(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Platform as Platform");
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

    public static List queryPlatform(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Platform as Platform");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("Platform", lockMode);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform[] listPlatformByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        try {
            List list = queryPlatform(session, condition, orderBy);
            return (Platform[]) list.toArray(new Platform[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform[] listPlatformByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            List list = queryPlatform(session, condition, orderBy, lockMode);
            return (Platform[]) list.toArray(new Platform[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadPlatformByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadPlatformByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        Platform[] platforms = listPlatformByQuery(session, condition, orderBy);
        if (platforms != null && platforms.length > 0)
            return platforms[0];
        else
            return null;
    }

    public static Platform loadPlatformByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        Platform[] platforms = listPlatformByQuery(session, condition, orderBy, lockMode);
        if (platforms != null && platforms.length > 0)
            return platforms[0];
        else
            return null;
    }

    public static java.util.Iterator iteratePlatformByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iteratePlatformByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iteratePlatformByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iteratePlatformByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iteratePlatformByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Platform as Platform");
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

    public static java.util.Iterator iteratePlatformByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Platform as Platform");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("Platform", lockMode);
            return query.iterate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform createPlatform() {
        return new Platform();
    }

    public static boolean save(Platform platform) throws PersistentException {
        try {
            GamePersistentManager.instance().saveObject(platform);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean delete(Platform platform) throws PersistentException {
        try {
            GamePersistentManager.instance().deleteObject(platform);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean refresh(Platform platform) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().refresh(platform);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean evict(Platform platform) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().evict(platform);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Platform loadPlatformByCriteria(PlatformCriteria platformCriteria) {
        Platform[] platforms = listPlatformByCriteria(platformCriteria);
        if (platforms == null || platforms.length == 0) {
            return null;
        }
        return platforms[0];
    }

    public static Platform[] listPlatformByCriteria(PlatformCriteria platformCriteria) {
        return platformCriteria.listPlatform();
    }
}
