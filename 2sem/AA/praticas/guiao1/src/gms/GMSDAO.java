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

public class GMSDAO {
    public static GMS loadGMSByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGMSByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS getGMSByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getGMSByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGMSByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS getGMSByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getGMSByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (GMS) session.load(GMS.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS getGMSByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (GMS) session.get(GMS.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (GMS) session.load(GMS.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS getGMSByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (GMS) session.get(GMS.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryGMS(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryGMS(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryGMS(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryGMS(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS[] listGMSByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listGMSByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS[] listGMSByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listGMSByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryGMS(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.GMS as GMS");
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

    public static List queryGMS(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.GMS as GMS");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("GMS", lockMode);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS[] listGMSByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        try {
            List list = queryGMS(session, condition, orderBy);
            return (GMS[]) list.toArray(new GMS[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS[] listGMSByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            List list = queryGMS(session, condition, orderBy, lockMode);
            return (GMS[]) list.toArray(new GMS[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGMSByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGMSByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        GMS[] gMSs = listGMSByQuery(session, condition, orderBy);
        if (gMSs != null && gMSs.length > 0)
            return gMSs[0];
        else
            return null;
    }

    public static GMS loadGMSByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        GMS[] gMSs = listGMSByQuery(session, condition, orderBy, lockMode);
        if (gMSs != null && gMSs.length > 0)
            return gMSs[0];
        else
            return null;
    }

    public static java.util.Iterator iterateGMSByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iterateGMSByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateGMSByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iterateGMSByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateGMSByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.GMS as GMS");
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

    public static java.util.Iterator iterateGMSByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.GMS as GMS");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("GMS", lockMode);
            return query.iterate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS createGMS() {
        return new GMS();
    }

    public static boolean save(GMS gMS) throws PersistentException {
        try {
            GamePersistentManager.instance().saveObject(gMS);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean delete(GMS gMS) throws PersistentException {
        try {
            GamePersistentManager.instance().deleteObject(gMS);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean refresh(GMS gMS) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().refresh(gMS);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean evict(GMS gMS) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().evict(gMS);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static GMS loadGMSByCriteria(GMSCriteria gMSCriteria) {
        GMS[] gMSs = listGMSByCriteria(gMSCriteria);
        if (gMSs == null || gMSs.length == 0) {
            return null;
        }
        return gMSs[0];
    }

    public static GMS[] listGMSByCriteria(GMSCriteria gMSCriteria) {
        return gMSCriteria.listGMS();
    }
}
