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

import org.hibernate.criterion.DetachedCriteria;
import org.orm.PersistentSession;
import org.orm.criteria.AbstractORMDetachedCriteria;
import org.orm.criteria.CollectionExpression;
import org.orm.criteria.IntegerExpression;
import org.orm.criteria.StringExpression;

import java.util.List;

public class UserDetachedCriteria extends AbstractORMDetachedCriteria {
    public final IntegerExpression Id;
    public final StringExpression name;
    public final StringExpression email;
    public final StringExpression password;
    public final CollectionExpression game;

    public UserDetachedCriteria() {
        super(User.class, UserCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        name = new StringExpression("name", this.getDetachedCriteria());
        email = new StringExpression("email", this.getDetachedCriteria());
        password = new StringExpression("password", this.getDetachedCriteria());
        game = new CollectionExpression("ORM_Game", this.getDetachedCriteria());
    }

    public UserDetachedCriteria(DetachedCriteria aDetachedCriteria) {
        super(aDetachedCriteria, UserCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        name = new StringExpression("name", this.getDetachedCriteria());
        email = new StringExpression("email", this.getDetachedCriteria());
        password = new StringExpression("password", this.getDetachedCriteria());
        game = new CollectionExpression("ORM_Game", this.getDetachedCriteria());
    }

    public GameDetachedCriteria createGameCriteria() {
        return new GameDetachedCriteria(createCriteria("ORM_Game"));
    }

    public User uniqueUser(PersistentSession session) {
        return (User) super.createExecutableCriteria(session).uniqueResult();
    }

    public User[] listUser(PersistentSession session) {
        List list = super.createExecutableCriteria(session).list();
        return (User[]) list.toArray(new User[list.size()]);
    }
}

