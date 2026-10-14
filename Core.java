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

/*----------------------------ENCAPSULATION---------------------------*/
package Package3;

public class Account {

    public String getAccount_holder_name() {
        return account_holder_name;
    }

    public void setAccount_holder_name(String account_holder_name) {
        this.account_holder_name = account_holder_name;
    }

    public float getBalance() {
        return Balance;
    }
    
    private String account_holder_name ;
    private float Balance ;

    public void setBalance(float Balance){
        if(Balance > 0){
            this.Balance = Balance ;
        }
        else{
            System.out.println(" Balance cannot be negative");
        }
    }


    public static void main(String[] args){
         Account account = new Account();
         account.setAccount_holder_name("Soham");
         account.setBalance(-500);

         System.out.println(account.getAccount_holder_name());
        System.out.println(account.getBalance());
    }
}


/*-------------------------------TASK1 14-10-2026----------------------------*/
package JavaPractiseTask1;

public class Student {
    String std_name ;
    int roll_number ;
    int age ;
    float percentage;
    float grade ;
    String Exam_status ;

    public static void main(String[] args){
        Student st = new Student();
        st.std_name = "soham";
        st.roll_number = 1;
        st.age = 22;
        st.grade = 85;
        st.Exam_status = "Pass";


        System.out.println("The student name is : " + st.std_name);
        System.out.println("The student roll number is : " + st.roll_number);
        System.out.println("The student age is : " + st.age);
        System.out.println("The student grade is : " + st.grade);
        System.out.println("The student Exam status is : " + st.Exam_status);
    }
}

