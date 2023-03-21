import io.reactivex.rxjava3.core.Observable;

public class main {

    public static void main(String[] args) throws InterruptedException {

        Observable.create(emitter -> {
                    while (!emitter.isDisposed()) {
                        long time = System.currentTimeMillis();
                        emitter.onNext(time);
                        if (time % 2 != 0) {
                            emitter.onError(new IllegalStateException("Odd millisecond!"));
                            break;
                        }
                    }
                })
                .subscribe(System.out::println, Throwable::printStackTrace);

        Thread.sleep(10000);
    }
}
