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
Task 1
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

Task 2 
 
package JavaPractiseTask1;

public class Employee {
    int emp_id;
    String name;
    float salary;
    int allowances;

    float HRA(float salary) {
        return salary * 0.2f;
    }

    float DA(float salary) {
        return salary * 0.1f;
    }

    float gross_salary(float salary) {
        float grossSalary = HRA(salary) + DA(salary) + salary;
        return grossSalary;
    }

    public static void main(String[] args) {

        Employee emp = new Employee();

        emp.emp_id = 1;
        emp.name = "Soham";
        emp.salary = 50000;
        emp.allowances = 10000;

        float hra = emp.HRA(emp.salary);
        float da = emp.DA(emp.salary);
        float gross = emp.gross_salary(emp.salary);

        System.out.println("Employee ID: " + emp.emp_id);
        System.out.println("Employee Name: " + emp.name);
        System.out.println("Basic Salary: " + emp.salary);
        System.out.println("HRA: " + hra);
        System.out.println("DA: " + da);
        System.out.println("Gross Salary: " + gross);
    }
}

Task  4
 package JavaPractiseTask1;

public class Calculator {

    int addition(int a , int b){
        return a + b ;
    }
    int subtraction(int a , int b){
        return a - b ;
    }
    int multiplication(int a , int b){
        return a * b ;
    }
    float division(int a , int b){
        return a / b ;
    }

    public static void main(String[] args) {

        Calculator calc = new Calculator();

        System.out.println("The addition of 2 elements is : " + calc.addition(20,10));
        System.out.println("The subtraction of 2 elements is : " + calc.subtraction(20,10));
        System.out.println("The multiplication of 2 elements is : " + calc.multiplication(20,10));
        System.out.println("The division of 2 elements is : " + calc.division(20,10));
        
    }
}

/*--------------------------------METHOD OVERRRIDING-------------------------------------*/

 package Package1;

public class MethodOverriding {

   class Animal {
        public void eat() {
            System.out.println("Animal eat");
        }
    }

    class Dog extends Animal {
        @Override
        public void eat() {
            System.out.println("Dog eat");
        }
    }

    public static void main(String[] args) {
        MethodOverriding ob = new MethodOverriding();
             Animal a = ob.new Dog();
             a.eat();

    }
}

/*--------------------------------Calculator----------------------------*/

package JavaPractiseTask1;

public class Calculator {

    int addition(int a , int b){
        return a + b ;
    }
    int subtraction(int a , int b){
        return a - b ;
    }
    int multiplication(int a , int b){
        return a * b ;
    }
    float division(int a , int b){
        return a / b ;
    }

    public static void main(String[] args) {

        Calculator calc = new Calculator();

        System.out.println("The addition of 2 elements is : " + calc.addition(20,10));
        System.out.println("The subtraction of 2 elements is : " + calc.subtraction(20,10));
        System.out.println("The multiplication of 2 elements is : " + calc.multiplication(20,10));
        System.out.println("The division of 2 elements is : " + calc.division(20,10));

    }
}

/*--------------------------------------Inner Class---------------------*/


public class OuterClass {
    private int outerVar = 100;

    // Member inner class
    public class InnerClass {
        public void display() {
            System.out.println("Outer variable: " + outerVar);
        }
    }

    public static void main(String[] args) {
        OuterClass outer = new OuterClass();
        OuterClass.InnerClass inner = outer.new InnerClass();
        inner.display();
    }
}

/*--------------------------------------Method Local Inner Class---------------------*/

public class OuterClass {
    public void display() {
        class InnerClass {
            public void print() {
                System.out.println("Method Local Inner Class");
            }
        }
        InnerClass inner = new InnerClass();
        inner.print();
    }

    public static void main(String[] args) {
        OuterClass outer = new OuterClass();
        outer.display();
    }
}

/*---------------------JAVA INTERFACES------------------------*/
 package Package2;

class A {
    interface Payment {
        void pay();
    }

    class UPI implements Payment {
        public void pay() {
            System.out.println("Paid using UPI");
        }
    }

    class Card implements Payment {
        public void pay() {
            System.out.println("Paid using Card");
        }
    }
    public static void main(String[] args){
        A a = new A();

        A.UPI upi = a.new UPI();
        upi.pay();

        A.Card card = a.new Card();
        card.pay();

    }
}

/*-------------------------------------------CONDITIONAL STATEMENTS PROGRAMS------------------------------*/
package Package3;
import java.util.Scanner;

public class BankData {

    public static void main(String[] args){
        float BankBalance;
        float withdraw;

        Scanner input = new Scanner(System.in);
        BankBalance = input.nextFloat();
        withdraw = input.nextFloat();

        if(BankBalance >= withdraw){
            System.out.println("You have withdrawed " + withdraw + " Amount left in the bank " + (BankBalance - withdraw));
        }
        else{
            System.out.println("Insufficient funds");
        }
    }
}

package Package3;
import java.util.Scanner;
public class ElectricityBill {
    public static void main(String[] args) {

        float Bill;

        Scanner input = new Scanner(System.in);
        float Units_Consumed =input.nextFloat();


        if(Units_Consumed <= 100){
            Bill = Units_Consumed * 5;
            System.out.println("The total bill is " + Bill);
        }
        else if(Units_Consumed > 100 && Units_Consumed <= 200){
            Bill = Units_Consumed * 7;
            System.out.println("The total bill is " + Bill);
        }
        else{
            Bill = Units_Consumed * 10;
            System.out.println("The total bill is " + Bill);
        }
    }
}

/*---------------------------JAVA PRACTISE 25----------------------------*/
package Package3;

import java.util.Scanner;
public class Authentication {

    public static void main(String[] args) {

        Scanner sc= new Scanner(System.in);
        String Username = sc.next();

        String Password = sc.next();

        if(Username.equals("Soham@_2004") &&
                Password.equals("Soham123") ){
            System.out.println("You have successfully logged in");
        }
        else{
            System.out.println("Authentication Failed");
        }
    }
}


/*---------------------------------------Loop ProblemS---------------------------------*/
sum from 1-100 
 package Package2;

public class EvenNumbers {


    public static void main(String[] args) {
        int sum = 0 ;
        for(int i=1 ; i<=100 ; i++){
             sum += i ;
            System.out.println(sum);
        }
    }
}
