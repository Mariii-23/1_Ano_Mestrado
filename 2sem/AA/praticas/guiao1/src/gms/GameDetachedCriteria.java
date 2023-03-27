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
import org.orm.criteria.*;

import java.util.List;

public class GameDetachedCriteria extends AbstractORMDetachedCriteria {
    public final IntegerExpression Id;
    public final IntegerExpression platformId;
    public final AssociationExpression platform;
    public final StringExpression name;
    public final IntegerExpression year;
    public final DoubleExpression price;
    public final StringExpression description;

    public GameDetachedCriteria() {
        super(Game.class, GameCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        platformId = new IntegerExpression("platform.Id", this.getDetachedCriteria());
        platform = new AssociationExpression("platform", this.getDetachedCriteria());
        name = new StringExpression("name", this.getDetachedCriteria());
        year = new IntegerExpression("year", this.getDetachedCriteria());
        price = new DoubleExpression("price", this.getDetachedCriteria());
        description = new StringExpression("description", this.getDetachedCriteria());
    }

    public GameDetachedCriteria(DetachedCriteria aDetachedCriteria) {
        super(aDetachedCriteria, GameCriteria.class);
        Id = new IntegerExpression("Id", this.getDetachedCriteria());
        platformId = new IntegerExpression("platform.Id", this.getDetachedCriteria());
        platform = new AssociationExpression("platform", this.getDetachedCriteria());
        name = new StringExpression("name", this.getDetachedCriteria());
        year = new IntegerExpression("year", this.getDetachedCriteria());
        price = new DoubleExpression("price", this.getDetachedCriteria());
        description = new StringExpression("description", this.getDetachedCriteria());
    }

    public PlatformDetachedCriteria createPlatformCriteria() {
        return new PlatformDetachedCriteria(createCriteria("platform"));
    }

    public Game uniqueGame(PersistentSession session) {
        return (Game) super.createExecutableCriteria(session).uniqueResult();
    }

    public Game[] listGame(PersistentSession session) {
        List list = super.createExecutableCriteria(session).list();
        return (Game[]) list.toArray(new Game[list.size()]);
    }
}

