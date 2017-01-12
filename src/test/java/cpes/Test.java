package cpes;

public class Test {

	public static void main( String[] args ) {
		//int i = getResult();
		//System.out.println(i);
		
		int i = 0;
		
		i = i++;
		// a = i++; // a = 0; i = 1;
		// i = a; // i = a = 0;
		
		System.out.println(i);
		
	}
	
	public static int getResult() {
		int i = 0;
		try {
			return i++; // a = i++;
		} finally {
			return ++i; // a = ++i;
		}
		
	}
}
