import java.util.Random;

class  MULT_2 
{  

public static double A[][], B[][], C[][];

public static void alloc(int size) {
    A = new double[size][size];
    B = new double[size][size];
    C = new double[size][size];
}

public static void init(int size) {
	Random r = new Random();
    for(int i=0; i<size; i++) {
        for(int j=0; j<size; j++) {
            A[i][j] = r.nextDouble();
            B[i][j] = r.nextDouble();
        }
    }
}

public static void mmult(int size) {
    for(int i=0; i<size; i++) {
        for(int j=0; j<size; j++) {
            C[i][j] = 0;
            for(int k=0; k<size; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

public static void main(String args[]){
    for (int i=0; i< 1000; i++){
      int size=128+(i%64);
      alloc(size);
      init(size);
      mmult(size);
    }
    //System.out.println( C[0][size/2+5]);
}

}
