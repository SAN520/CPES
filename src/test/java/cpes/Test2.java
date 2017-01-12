package cpes;

import java.util.ArrayList;
import java.util.List;

public class Test2 {

	public static void main(String[] args) {
		
//		Integer i1 = 127;
//		Integer i2 = 127;
//		System.out.println( i1 == i2 );
		
		
		List<User> users = new ArrayList<User>();
		
		User user1 = new User();
		user1.id = 1;
		user1.money = 500;
		users.add(user1);
		
		User user2 = new User();
		user2.id = 2;
		user2.money = 600;
		users.add(user2);
		
		User user3 = new User();
		user3.id = 3;
		user3.money = 500;
		users.add(user3);
		
		int count = 0;
		// 引用类型的比较使用equals
		Integer money = 500;
		for ( User user : users ) {
			if ( user.money.equals(money) ) {
				count++;
			}
		}
		
		System.out.println( count );
	}

}
class User {
	public Integer id;
	public Integer money;
}