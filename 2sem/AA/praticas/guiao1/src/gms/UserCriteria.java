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

import org.hibernate.Criteria;
import org.orm.PersistentException;
import org.orm.PersistentSession;
import org.orm.criteria.AbstractORMCriteria;
import org.orm.criteria.CollectionExpression;
import org.orm.criteria.IntegerExpression;
import org.orm.criteria.StringExpression;

public class UserCriteria extends AbstractORMCriteria {
    public final IntegerExpression Id;
    public final StringExpression name;
    public final StringExpression email;
    public final StringExpression password;
    public final CollectionExpression game;

    public UserCriteria(Criteria criteria) {
        super(criteria);
        Id = new IntegerExpression("Id", this);
        name = new StringExpression("name", this);
        email = new StringExpression("email", this);
        password = new StringExpression("password", this);
        game = new CollectionExpression("ORM_Game", this);
    }

    public UserCriteria(PersistentSession session) {
        this(session.createCriteria(User.class));
    }

    public UserCriteria() throws PersistentException {
        this(GamePersistentManager.instance().getSession());
    }

    public src.gms.GameCriteria createGameCriteria() {
        return new src.gms.GameCriteria(createCriteria("ORM_Game"));
    }

    public User uniqueUser() {
        return (User) super.uniqueResult();
    }

    public User[] listUser() {
        java.util.List list = super.list();
        return (User[]) list.toArray(new User[list.size()]);
    }
}

