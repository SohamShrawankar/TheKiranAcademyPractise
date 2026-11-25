package DSApackage;

public class StackArray {

   int arr[] = new int[5] ;
   int top = -1 ;


   // Push function
   void push(int data){
       if(top == arr.length - 1){
            System.out.println("Stack overloaded") ;
            return;
       }
       top++ ;
       arr[top] = data ;
   }

   // pop function
   int pop(){
       if(top == -1){
           System.out.println("Stack underflow") ;
           return -1 ;
       }
       int value = arr[top] ;
       top -- ;
       return value ;
   }

   //peep function
    int peek(){
       if(top == -1){
           System.out.println("Stack empty no elements on the top") ;
       }
       return arr[top] ;
    }


   //Display function
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
       System.out.println("The top element was: " + arr.pop()) ;
       System.out.println("The top element was: " + arr.peek()) ;
       arr.display() ;
   }
}

