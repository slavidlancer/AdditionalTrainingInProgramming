package snippets;

import java.lang.reflect.GenericArrayType;
import java.util.ArrayList;
import java.util.LinkedList;

public class ObjectsExample {
    public static void main(String[] args) {
        //GenericArrayType<T> genericTypeArray = new GenericArrayType<T>();
        ArrayList<Integer> intList = new ArrayList<Integer>();
        ArrayList<Boolean> boolList = new ArrayList<Boolean>();
        ArrayList<Double> realNumbersList = new ArrayList<Double>();
        ArrayList<Integer> genericList = new ArrayList<Integer>();
        ArrayList<Object> genericObjectList = new ArrayList<Object>();
        ArrayList plainList = new ArrayList();

        LinkedList<Integer> linkedListExample = new LinkedList<Integer>();
        //linkedListExample == intList;

        linkedListExample.add(1);
        linkedListExample.add(9);
        intList.add(2);
    }
}
