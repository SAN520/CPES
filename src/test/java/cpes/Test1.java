package cpes;

public class Test1 {

	public static void main(String[] args) throws Exception {
		A a = new A();
		// ����Ȩ�ޣ����������ߺ��ṩ��֮��ķ��ʹ�ϵ
		System.out.println( a.clone());
		// ������ cpes.Test1
		// �ṩ�� java.lang.Object
	}

}
class A {

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
	
}
