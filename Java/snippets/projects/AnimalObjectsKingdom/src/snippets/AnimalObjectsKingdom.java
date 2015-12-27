package snippets;

public class AnimalObjectsKingdom {
    public static void main(String[] args) {
        AfricanLion africanLionObject = new AfricanLion();
        Object objectVariable = africanLionObject;

        System.out.println(africanLionObject.toString());

        AfricanLion africanLionNewObject = new AfricanLion(true, 15);

        System.out.println(africanLionObject);

        africanLionNewObject.isMale();
        africanLionNewObject.setMale(true);

        Animal catObject = new Cat();

        catObject.printInformation();

        {
            Lion lion = new Lion();
            lion.catchPray(null);
        }

        {
            AfricanLion lion = new AfricanLion();
            lion.catchPray(null);
        }

        {
            Lion lion = new AfricanLion();
            lion.catchPray(null);
        }

        Lion lionNew = new Lion(true, 150);
        Felidae bigCatFirst = lionNew;
        AfricanLion africanLionNew = new AfricanLion();
        Felidae bigCatSecond = africanLionNew;

        System.out.println(objectVariable + " " + bigCatFirst + " " +
                bigCatSecond);
    }
}
