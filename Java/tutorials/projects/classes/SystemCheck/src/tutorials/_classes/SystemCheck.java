package tutorials._classes;

public class SystemCheck {
    private static double version = 0.10;
    private static String vendor = "Sun Microsystems";

    public static double getVersion() {
        return version;
    }

    public static void setVersion(double version) {
        SystemCheck.version = version;
    }

    public static String getVendor() {
        return SystemCheck.vendor;
    }

    public static void setVendor(String vendor) {
        SystemCheck.vendor = vendor;
    }

    public static void main(String[] args) {
        System.out.println(SystemCheck.getVendor());
        System.out.println(SystemCheck.getVersion());

        SystemCheck.setVendor("empty");
        SystemCheck.setVersion(0.09);

        System.out.println(SystemCheck.getVendor());
        System.out.println(SystemCheck.getVersion());
    }
}
