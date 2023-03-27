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

import java.util.List;

public class GMSDetachedCriteria extends AbstractORMDetachedCriteria {
    public final IntegerExpression Id;
    public final CollectionExpression user;

    public GMSDetachedCriteria() {
        super(GMS.class, GMSCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        user = new CollectionExpression("ORM_User", this.getDetachedCriteria());
    }

    public GMSDetachedCriteria(DetachedCriteria aDetachedCriteria) {
        super(aDetachedCriteria, GMSCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        user = new CollectionExpression("ORM_User", this.getDetachedCriteria());
    }

    public UserDetachedCriteria createUserCriteria() {
        return new UserDetachedCriteria(createCriteria("ORM_User"));
    }

    public GMS uniqueGMS(PersistentSession session) {
        return (GMS) super.createExecutableCriteria(session).uniqueResult();
    }

    public GMS[] listGMS(PersistentSession session) {
        List list = super.createExecutableCriteria(session).list();
        return (GMS[]) list.toArray(new GMS[list.size()]);
    }
}

