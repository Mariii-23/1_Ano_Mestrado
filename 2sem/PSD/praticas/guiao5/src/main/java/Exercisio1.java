import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Single;

import java.util.concurrent.TimeUnit;

public class Exercisio1 {

    public Flowable<Integer> op1(int i) {
        return Flowable.just(i).delay(i, TimeUnit.MILLISECONDS).map(e -> e +1);
    }

    public Flowable<Integer> op2(int i) {
        return Flowable.just(i).map(e  -> e*2);
    }

    public Flowable<Integer> m1() {
        return Flowable.just(1)
                .flatMap(i -> op1(i))
                .map(i -> i+1)
                .flatMap(i -> op2(i) )
                .flatMap(i -> op1(i) )
        ;
    }

    public class Vars {
        int i1,i2;


        public Vars(int i1, int i2) {
            this.i1 = i1;
            this.i2 = i2;
        }
    }
    //int m2() { int i=op1(1)+op1(2); return op2(i); }
    public Flowable<Integer> m2() {
        return Flowable.just(new Vars(0,0))
                .flatMap(v -> op1(1)
                .map(r -> new Vars(r, v.i2)))
                .flatMap(v -> op1(2)
                        .map(r -> new Vars(v.i1, r)))
                .map(v -> v.i1 + v.i2)
                .flatMap(r -> op2(r))
        ;
    }

    public Single<Integer> m2_melhorada() {
        return (Single<Integer>) Flowable.just(1,2)
                .flatMap(i -> op1(i))
                .reduce(0, Integer::sum)
                .map(this::op2);
    }


    public static void main(String[] args) {
        Exercisio1 e =  new Exercisio1();
        e.op1(50).blockingSubscribe();
        e.op2(20).blockingSubscribe();

        e.m1().blockingSubscribe(r -> {
            System.out.println("resultado " + r);
        });

        e.m2().blockingSubscribe(r -> {
            System.out.println("resultado " + r);
        });

        e.m2_melhorada().blockingSubscribe(r -> {
            System.out.println("resultado " + r);
        });

    }
}
