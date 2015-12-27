package tutorials.qualitycode;

public class Main {
    public static void main(String[] args) {
        Person person = new Person();

        person.setMale(false);
        person.setName("name");
        person.setAge(1);
        person.setNumberOfChildren(666);

        System.out.println(person.getName() + " " + person.isMale() + " " +
                person.getAge() + " " + person.getNumberOfChildren());
    }
}
