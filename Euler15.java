// import java.math.BigInteger;

public class Euler15 {

	static int size = 20;
	static long routes = 0;

	public static void main(String[] args) {
		move(0,0);

		System.out.println("routes: "+routes);
	}

	public static void move(int x, int y) {
		// bottom left corner ?
		if (x == size && y == size) {
			routes += 1; // another successful rout
			return;
		}
		// move right?
		if (x < size)
			move(x+1,y);
		
		// move down
		if (y<size)
			move(x,y+1);
	}
}