package snippets;

import java.util.ArrayList;

/**
 * A class representing math utils. It works with {@link
 * PrimesDocumentationExample
 *
 * Usage:
 * <code>
 * getPrimes();
 * </code>
 *
 * @author author
 * @version 1.0
 * @see snippets.PrimesDocumentationExample
 */
public class Utils {
    /**
     * @return a list of all primes in given range [start, end].
     * A number num is prime if it can not be divided to any number
     * in the range [2, sqrt(num)]. We check condition this for all
     * numbers in the given range.
     */
    public static ArrayList<Integer> getPrimes(int start, int end) {
        ArrayList<Integer> primesList = new ArrayList<Integer>();

        for (int number = start; number <= end; number++) {
            boolean prime = true;

            for (int divider = 2; divider <= Math.sqrt(number); divider++) {
                if (number % divider == 0) {
                    // Found a divider -> num is not prime
                    prime = false;

                    break;
                }
            }

            if (prime) {
                primesList.add(number);
            }
        }

        return primesList;
    }
}
