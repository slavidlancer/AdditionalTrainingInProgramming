package tutorials.exams;

import java.util.ArrayList;

public class Shop {
    private String name;
    private ArrayList<Part> parts;

    public Shop(String name){
        this.name = name;
        this.parts = new ArrayList<Part>();
    }

    public void addPart(Part part){
        this.parts.add(part);
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();

        result.append("Shop: " + this.name + "\n\n");

        for (Part part : parts) {
            result.append(part);
            result.append("\n");
        }

        return result.toString();
    }
}
