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
