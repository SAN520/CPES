package cpes;

public class Test3 {
	public static void main(String[] args) {
		
		AA a = new BB();
		// 多态基于动态绑定机制
		// 当调用一个对象的成员方法时，会判断对象的实际内存中是否包含成员方法，如果包含，就直接调用
	    // 如果没有包含，就调用父类的方法。
		int r = getResult(a);
		
		System.out.println( r );
	}
	
	public static int getResult(AA a) {
		System.out.println( "aaa" );
		return a.getI();
	}
}
class AA {
	public int i = 10;
	
	public int getI() {
		return i;
	}
}
class BB extends AA{
	public int i = 20;
	
//	public int getI() {
//		return i;
//	}
}
