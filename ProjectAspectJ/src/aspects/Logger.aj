package aspects;

public aspect Logger {

	after(): call(void model.SuperClass.test()) {
		System.out.println("after->call->SuperClass");
	}

	after(): call(void model.SuperSuperClass.test()) {
		System.out.println("after->call->SuperSuperClass");
	}

	after(): call(void model.SubClass.test()) {
		System.out.println("after->call->SubClass");
	}

	after(): execution(void model.SuperClass.test()) {
		System.out.println("after->execution->SuperClass");
	}

	after(): execution(void model.SuperSuperClass.test()) {
		System.out.println("after->execution->SuperSuperClass");
	}

	after(): execution(void model.SubClass.test()) {
		System.out.println("after->execution->SubClass");
	}

	before(): execution(void model.SubClass.test()) {
		System.out.println("before->execution->SubClass");
	}

	before(): execution(void model.SuperClass.test()) {
		System.out.println("before->execution->SuperClass");
	}

	before(): execution(void model.SuperSuperClass.test()) {
		System.out.println("before->execution->SuperSuperClass");
	}

	before(): call(void model.SuperClass.test()) {
		System.out.println("before->call->SuperClass");
	}

	before(): call(void model.SubClass.test()) {
		System.out.println("before->call->SubClass");
	}

	before(): call(void model.SuperSuperClass.test()) {
		System.out.println("before->call->SuperSuperClass");
	}

}
