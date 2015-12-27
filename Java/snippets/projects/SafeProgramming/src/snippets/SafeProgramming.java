package snippets;

public class SafeProgramming {
    public static void main(String[] args) {
        int result = archive(null, true);

        try {
            int otherResult = archiveOther(null, true);
        } catch (StorageException se) {
            System.err.println("error: " + se.getMessage());

            se.printStackTrace();
        }
    }

    private static int archive(PersonData user, boolean persistent) {
        assert user != null;

        // Do some processing

        int resultFromProcessing = -1;

        assert resultFromProcessing >= 0 :
                "Variable resultFromProcessing is negative. There is a bug";

        return resultFromProcessing;
    }

    private static int archiveOther(PersonData user, boolean persistent)
            throws StorageException {
        if (user == null) {
            throw new StorageException("null parameter");
        }

        // Do some processing

        int resultFromProcessing = -1;

        assert resultFromProcessing >= 0 :
                "Variable resultFromProcessing is negative. There is a bug";

        return resultFromProcessing;
    }
}
