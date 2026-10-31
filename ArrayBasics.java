/*---------------------- Array operations -------------------------------*/
package Package2;
import java.util.ArrayList ;
import java.util.Collections ;

public class Arrays {

    public static void main(String[] args) {


        ArrayList<Integer> list = new ArrayList<Integer>();

        list.add(1);
        list.add(2);
        list.add(3);
        System.out.print(list);

        list.set(2,4);
        System.out.println(list);

        int size = list.size();
        System.out.println(size);

        Collections.sort(list);
        System.out.println(list);
    }
}

/*-------------------- Array input -------------------*/

package Package2;
import java.util.ArrayList ;
import java.util.Collections ;
import java.util.Scanner;

public class Arrays {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            ArrayList<Integer> list = new ArrayList<>();

            int n = sc.nextInt();

            for (int i = 0; i < n; i++) {
                list.add(sc.nextInt());
            }
            
            System.out.println(list);
        }

}
/*-------------------- Array Largest -------------------*/

package Package2;
import java.util.ArrayList ;
import java.util.Collections ;
import java.util.Scanner;

public class Arrays {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            ArrayList<Integer> arr = new ArrayList<>();

            int n = sc.nextInt();

            for (int i = 0; i < n; i++) {
                arr.add(sc.nextInt());
            }
            //Largest Element
            int highest = arr.get(0);
            for (int i = 0; i < arr.size(); i++) {

                if (arr.get(i) > highest) {
                    highest = arr.get(i);
                }

            }
            System.out.println(arr);
            System.out.println(highest);
        }
}
/*-------------------------------EVEN & ODD-----------------------------*/
package Package2;

public class EvenOdd {

    public static void main(String[] args) {

       int Even = 0;
       int Odd = 0 ;

       int[] arr = {1,2,3,4,5,6,7,8,9,10};

       for(int i=0 ; i<arr.length ; i++){
           if(arr[i]%2==0){
               Even++;
           }
           else{
               Odd++;
           }
       }
        System.out.println("Total Even numbers: " + Even );
        System.out.println("Total Odd numbers: " + Odd );
    }
}

