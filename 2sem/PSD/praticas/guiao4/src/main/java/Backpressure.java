import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Observable;

import java.util.concurrent.TimeUnit;

import static io.reactivex.rxjava3.schedulers.Schedulers.computation;

/**
 * Exercício 1
 */
public class Backpressure {
    public static void main(String[] args) {
        //Observable.interval(1, TimeUnit.MILLISECONDS)
        //        .map(i-> {
        //            System.out.println("produzi: " + i);
        //            return i;
        //        })
        //        .observeOn(computation()) // esta linha faz diferenca
        //        .map(i->  {
        //            System.out.println("antes: " + i);
        //            Thread.sleep(200);
        //            System.out.println("depois " + i);
        //            return  i;
        //        })
        //        .blockingSubscribe();

        //assim enche a fila, fica sempre a receber, logo passaremos para outra solucao:

        // assim, quando a fila enche (ou seja fica sem moedas) ele da erro
        // porque fica sem moeda -> crasha
        // porque nao tamos a adicionar  moedas
        Flowable.interval(1, TimeUnit.MILLISECONDS)
                .map(i -> {
                    System.out.println("produzi: " + i);
                    return i;
                })
                //.onBackpressureBuffer() // este aqui enche bue
                .onBackpressureDrop() // aqui quando o buffer ficar cheio ele vai fazer drop
                // logo de 127 vai passar para um numero bue alto
                .observeOn(computation()) // esta linha faz diferenca
                .map(i -> {
                    System.out.println("antes: " + i);
                    Thread.sleep(200);
                    System.out.println("depois " + i);
                    return i;
                })
                .blockingSubscribe();
    }
}
