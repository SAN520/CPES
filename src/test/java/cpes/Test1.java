package cpes;

public class Test1 {

	public static void main(String[] args) throws Exception {
		A a = new A();
		// 访问权限，方法调用者和提供者之间的访问关系
		System.out.println( a.clone());
		// 调用者 cpes.Test1
		// 提供者 java.lang.Object
	}

}
class A {

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
	
}
