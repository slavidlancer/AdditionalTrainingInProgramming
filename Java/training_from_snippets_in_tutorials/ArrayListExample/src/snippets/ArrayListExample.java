package snippets;

import java.util.ArrayList;
import java.util.Date;

public class ArrayListExample {
    public static void main(String[] args) {
        ArrayList list = new ArrayList();

        list.add("hello");
        list.add(5);
        list.add(3.14159);
        list.add(new Date());

        int listSize = list.size();

        for (int i = 0; i < listSize; i++) {
            Object value = list.get(i);

            System.out.printf("index = %d, value = %s\n", i, value);
        }

        list.add(2);
        list.add(3);
        list.add(4);

        int sum = 0;
        int listSizeNew = list.size();

        for (int i = listSize; i < listSizeNew; i++) {
            Integer value = (Integer) list.get(i);

            sum += value.intValue();
        }

        System.out.println("sum = " + sum);
    }
}
