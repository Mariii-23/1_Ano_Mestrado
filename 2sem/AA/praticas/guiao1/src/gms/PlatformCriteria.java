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
import org.orm.criteria.IntegerExpression;
import org.orm.criteria.StringExpression;

public class PlatformCriteria extends AbstractORMCriteria {
    public final IntegerExpression Id;
    public final StringExpression name;
    public final IntegerExpression year;
    public final StringExpression description;
    public final StringExpression manufacturer;

    public PlatformCriteria(Criteria criteria) {
        super(criteria);
        Id = new IntegerExpression("Id", this);
        name = new StringExpression("name", this);
        year = new IntegerExpression("year", this);
        description = new StringExpression("description", this);
        manufacturer = new StringExpression("manufacturer", this);
    }

    public PlatformCriteria(PersistentSession session) {
        this(session.createCriteria(Platform.class));
    }

    public PlatformCriteria() throws PersistentException {
        this(GamePersistentManager.instance().getSession());
    }

    public Platform uniquePlatform() {
        return (Platform) super.uniqueResult();
    }

    public Platform[] listPlatform() {
        java.util.List list = super.list();
        return (Platform[]) list.toArray(new Platform[list.size()]);
    }
}

