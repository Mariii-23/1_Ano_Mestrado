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

public class GameDAO {
    public static Game loadGameByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGameByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game getGameByORMID(int Id) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getGameByORMID(session, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGameByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game getGameByORMID(int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return getGameByORMID(session, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (Game) session.load(Game.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game getGameByORMID(PersistentSession session, int Id) throws PersistentException {
        try {
            return (Game) session.get(Game.class, Id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (Game) session.load(Game.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game getGameByORMID(PersistentSession session, int Id, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            return (Game) session.get(Game.class, Id, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryGame(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryGame(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryGame(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return queryGame(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game[] listGameByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listGameByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game[] listGameByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return listGameByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static List queryGame(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Game as Game");
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

    public static List queryGame(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Game as Game");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("Game", lockMode);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game[] listGameByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        try {
            List list = queryGame(session, condition, orderBy);
            return (Game[]) list.toArray(new Game[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game[] listGameByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            List list = queryGame(session, condition, orderBy, lockMode);
            return (Game[]) list.toArray(new Game[list.size()]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGameByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return loadGameByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        Game[] games = listGameByQuery(session, condition, orderBy);
        if (games != null && games.length > 0)
            return games[0];
        else
            return null;
    }

    public static Game loadGameByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        Game[] games = listGameByQuery(session, condition, orderBy, lockMode);
        if (games != null && games.length > 0)
            return games[0];
        else
            return null;
    }

    public static java.util.Iterator iterateGameByQuery(String condition, String orderBy) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iterateGameByQuery(session, condition, orderBy);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateGameByQuery(String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        try {
            PersistentSession session = GamePersistentManager.instance().getSession();
            return iterateGameByQuery(session, condition, orderBy, lockMode);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static java.util.Iterator iterateGameByQuery(PersistentSession session, String condition, String orderBy) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Game as Game");
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

    public static java.util.Iterator iterateGameByQuery(PersistentSession session, String condition, String orderBy, org.hibernate.LockMode lockMode) throws PersistentException {
        StringBuffer sb = new StringBuffer("From src.gms.Game as Game");
        if (condition != null)
            sb.append(" Where ").append(condition);
        if (orderBy != null)
            sb.append(" Order By ").append(orderBy);
        try {
            Query query = session.createQuery(sb.toString());
            query.setLockMode("Game", lockMode);
            return query.iterate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game createGame() {
        return new Game();
    }

    public static Game createGame(String name, int year, int price,String description) {
        return new Game(name,year, price,description);
    }

    public static boolean save(Game game) throws PersistentException {
        try {
            GamePersistentManager.instance().saveObject(game);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean delete(Game game) throws PersistentException {
        try {
            GamePersistentManager.instance().deleteObject(game);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean refresh(Game game) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().refresh(game);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static boolean evict(Game game) throws PersistentException {
        try {
            GamePersistentManager.instance().getSession().evict(game);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw new PersistentException(e);
        }
    }

    public static Game loadGameByCriteria(GameCriteria gameCriteria) {
        Game[] games = listGameByCriteria(gameCriteria);
        if (games == null || games.length == 0) {
            return null;
        }
        return games[0];
    }

    public static Game[] listGameByCriteria(GameCriteria gameCriteria) {
        return gameCriteria.listGame();
    }
}
