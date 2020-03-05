package executor;

import model.SubClass;
import model.SuperClass;

public class AppExecutor {

	public static void main(String[] args) {
		SuperClass superClass = new SuperClass();
		System.out.println("start");
		superClass.test();
		System.out.println("end");

		System.out.println();

		SubClass subClass = new SubClass();
		System.out.println("start");
		subClass.test();
		System.out.println("end");

		System.out.println();

		SuperClass castedSubClass = new SubClass();
		System.out.println("start");
		castedSubClass.test();
		System.out.println("end");
		
		System.out.println();

		System.out.println("start");
		((SubClass) castedSubClass).test();
		System.out.println("end");
	}

}
