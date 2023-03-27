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
import org.orm.criteria.IntegerExpression;
import org.orm.criteria.StringExpression;

import java.util.List;

public class PlatformDetachedCriteria extends AbstractORMDetachedCriteria {
    public final IntegerExpression Id;
    public final StringExpression name;
    public final IntegerExpression year;
    public final StringExpression description;
    public final StringExpression manufacturer;

    public PlatformDetachedCriteria() {
        super(Platform.class, PlatformCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        name = new StringExpression("name", this.getDetachedCriteria());
        year = new IntegerExpression("year", this.getDetachedCriteria());
        description = new StringExpression("description", this.getDetachedCriteria());
        manufacturer = new StringExpression("manufacturer", this.getDetachedCriteria());
    }

    public PlatformDetachedCriteria(DetachedCriteria aDetachedCriteria) {
        super(aDetachedCriteria, PlatformCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        name = new StringExpression("name", this.getDetachedCriteria());
        year = new IntegerExpression("year", this.getDetachedCriteria());
        description = new StringExpression("description", this.getDetachedCriteria());
        manufacturer = new StringExpression("manufacturer", this.getDetachedCriteria());
    }

    public Platform uniquePlatform(PersistentSession session) {
        return (Platform) super.createExecutableCriteria(session).uniqueResult();
    }

    public Platform[] listPlatform(PersistentSession session) {
        List list = super.createExecutableCriteria(session).list();
        return (Platform[]) list.toArray(new Platform[list.size()]);
    }
}

