package com.tutorials.testing.unit;

import java.util.Arrays;

public class FirstDayAtSchool {
    public String[] prepareBag() {
        String[] schoolbag = {"Books", "Notebooks", "Pens"};
        
        System.out.println("school bag contains: "+ Arrays.toString(schoolbag));
        
        return schoolbag;
    }

    public String addPencils() {
        StringBuilder schoolbagList = new StringBuilder();
        schoolbagList.append("[");
        schoolbagList.append("Books");
        schoolbagList.append(", ");
        schoolbagList.append("Notebooks");
        schoolbagList.append(", ");
        schoolbagList.append("Pens");
        schoolbagList.append(", ");
        schoolbagList.append("Pencils");
        schoolbagList.append("]");
        
        System.out.println("school bag contains: " + schoolbagList.toString());
        String schoolbag = schoolbagList.toString();
        
        return schoolbag;
    }
}
