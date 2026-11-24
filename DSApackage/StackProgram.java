package DSApackage;

public class StackArray {

   int arr[] = new int[5] ;
   int top = -1 ;

   void push(int data){
       if(top == arr.length - 1){
            System.out.println("Stack overloaded") ;
            return;
       }
       top++ ;
       arr[top] = data ;
   }

   void display(){
       if(top == -1){
           System.out.println("Stack is empty") ;
           return ;
       }
       for(int i= top ; i>=0 ; i--){
           System.out.println(arr[i]) ;
       }
   }
   static void main(){

       StackArray arr = new StackArray();
       arr.push(10);
       arr.push(20);
       arr.push(30) ;

       arr.display() ;

   }
}

