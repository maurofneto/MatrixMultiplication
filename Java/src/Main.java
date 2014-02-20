import java.util.Arrays;

/**
 * @author Mauro
 *
 */
public class Main {
	public final static int N = 100;
	
	public static void main(String[] args) {
		double[][] 	a = new double[N][N],
					b = new double[N][N],
					c = new double[N][N];
		
		int i, j, k;
		
		for (i = 0; i < N; i++) {
			for (j = 0; j < N; j++) {
				a[i][j] = 0.5;
				b[i][j] = N;
				c[i][j] = 0.0;
			}
		}
		
		for (i = 0; i < N; i++) {
			for (j = 0; j < N; j++) {
				for (k = 0; k < N; k++) {
					c[i][j] += a[i][j] * b[j][k];
				}
			}
		}
		
//		for (i = 0; i < N; i++) {
//			System.out.println(Arrays.toString(c));
//		}
	}
}