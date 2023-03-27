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

public class GMSCriteria extends AbstractORMCriteria {
    public final IntegerExpression Id;
    public final CollectionExpression user;

    public GMSCriteria(Criteria criteria) {
        super(criteria);
        Id = new IntegerExpression("Id", this);
        user = new CollectionExpression("ORM_User", this);
    }

    public GMSCriteria(PersistentSession session) {
        this(session.createCriteria(GMS.class));
    }

    public GMSCriteria() throws PersistentException {
        this(GamePersistentManager.instance().getSession());
    }

    public UserCriteria createUserCriteria() {
        return new UserCriteria(createCriteria("ORM_User"));
    }

    public GMS uniqueGMS() {
        return (GMS) super.uniqueResult();
    }

    public GMS[] listGMS() {
        java.util.List list = super.list();
        return (GMS[]) list.toArray(new GMS[list.size()]);
    }
}

