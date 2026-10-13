 class Main{
    int a = 20 ;
    String name = "Soham Shrawankar";

    public static void main(String[] args) {
        Main obj = new Main();
        System.out.println(obj.a);

        Main obj2 = new Main();
        System.out.println(obj2.name);
    }
}
/*-------------INHERITACE-------------------*/
package Package2;

class A {
    void A1() {
        System.out.println("hello");
    }
}

class B extends A {
    void B1() {
        System.out.println("hello from B");
    }
}

class C extends B {
    void C1() {
        System.out.println("hello from C");
    }
}

public class Main {
    public static void main(String[] args) {
        C m = new C();

        m.A1();
        m.B1();
        m.C1();
    }
}

/*-------------------------CONSTRUCTORS IN JAVA ---------------------------*/ 
class Main {
    String name ;
    int emp_id ;

    Main(String name, int emp_id) {
        this.name = name;
        this.emp_id = emp_id;
    }
    public static void main(String[] args) {
        Main obj = new Main("soham",101);
   System.out.println(obj.name + " " + obj.emp_id);
    }
}



