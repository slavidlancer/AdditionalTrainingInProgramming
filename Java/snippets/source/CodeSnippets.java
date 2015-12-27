boolean equal = (num == sum);


char symbol = 'a';
System.out.println("The code of '" + symbol + "' is: " + (int) symbol);


Object container = 5;
Object container2 = "Five";
System.out.println("The value of container is: " + container);
System.out.println("The value of container2 is: " + container2);


String name = new String();
byte[] bytes = {1, 2, 3};
float realNumber = 1.25e+1f;
char symbol = '\u003A';
symbol = '\\';
long myLong = Long.MAX_VALUE;
System.out.printf("%.5f%n", realNumber);


int a = 5;
int b = 4;
System.out.println(a + (++b));


!(a && b) == (!a || !b)
!(a || b) == (!a && !b)


short a = 3;	// 0000 0011 = 3
short b = 5;	// 0000 0101 = 5
System.out.println(a | b);	// 0000 0111 = 7
System.out.println(a & b);	// 0000 0001 = 1
System.out.println(a ^ b);	// 0000 0110 = 6
System.out.println(~a & b);	// 0000 0100 = 4
System.out.println(a << 1);	// 0000 0110 = 6
System.out.println(a << 2);	// 0000 1100 = 12
System.out.println(a >> 1);	// 0000 0001 = 1


int a = 6;
int b = 4;
System.out.println(a > b ? "a>b" : "b<=a"); // a>b


String s = "Beer";
System.out.println(s instanceof String); // true


Scanner input = new Scanner(System.in);
System.out.print("Enter number:");
int number = input.nextInt();


int n = 35; // 00100011
int p = 6;
int i = 1; // 00000001
int mask = i << p; // Move the 1st bit with p positions
// If i & mask are positive then the p-th bit of n is 1
System.out.println((n & mask) != 0 ? 1 : 0);


//console/shell command
cat <file name> //print content


System.out.printf("The time is: %1$tH:%1$tM:%1$tS.\n",
	new java.util.Date());
// The time is: 13:54:36. (ends with new line "\n")
Date date = new Date();
System.out.printf("The date in Day/Month/Year is:
	%1$td/%1$tm/%1$tY.\n", date);
// The date in Day/Month/Year is: 09/08/2008.
System.out.printf("The date and time is: %1$tA
	%1$tI:%1$tM%1$tp %1$tB/%1$tY. \n", date);
// The date and time is: Събота 05:08pm Август/2008.


long n = 120582;
System.out.format("%d%n", n); // --> "120582"
System.out.format("%08d%n", n); // --> "00120582"
System.out.format("%+8d%n", n); // --> " +120582"
System.out.format("%,8d%n", n); // --> " 120,582"
System.out.format("%+,8d%n%n", n); // --> "+120,582"
double pi = Math.PI;
System.out.format("%f%n", pi); // --> "3.141593"
System.out.format("%.3f%n", pi); // --> "3.142"
System.out.format("%10.3f%n", pi); // --> " 3.142"
System.out.format("%-10.3f%n", pi); // --> "3.142"
System.out.format(Locale.ITALIAN,
	"%-10.4f%n%n", pi); // --> "3,1416"
Calendar c = Calendar.getInstance();
System.out.format("%tB %te, %tY%n", c, c, c);
// --> "Август 9, 2008"
System.out.format("%tl:%tM %tp%n", c, c, c);
// --> "5:29 pm"


Locale.setDefault(Locale.US);
System.out.println("Locale: " + Locale.getDefault().toString());
System.out.printf("%.2f\n", 1234.56);
System.out.printf("%1$tA %1$tI:%1$tM%1$tp %1$tB-%1$tY.\n\n",
	new Date());
Locale.setDefault(new Locale("bg", "BG"));
System.out.println("Locale: " + Locale.getDefault().toString());
System.out.printf("%.2f\n", 1234.56);
System.out.printf("%1$tA %1$tH:%1$tM %1$tB-%1$tY.\n",
	new Date());


int ch;
System.out.print("Enter some text: ");
while ((ch = System.in.read()) != '\n') {
System.out.print((char) ch);
}


BufferedReader br = new BufferedReader(
	new InputStreamReader(System.in));
System.out.print("Please enter your first name: ");
String firstName = br.readLine();


Scanner input = new Scanner(System.in);
System.out.print("Please enter your first name: ");
String firstName = input.nextLine();


System.out.println("char 'a' == 'a'? " + ('a' == 'a'));
System.out.println("char 'a' == 'b'? " + ('a' == 'b'));
System.out.println("5 != 6? " + (5 != 6));
System.out.println("5.0 == 5L? " + (5.0 == 5L));
System.out.println("true == false? " + (true == false));
System.out.println("Изключващо ИЛИ: " + ((2<3) ^ (4>3)));


byte b1 = 6 & 5; // 00000110 & 00000101 = 00000100
byte b2 = 7 | 9; // 00000111 | 00001001 = 00001111
byte b3 = 5 ^ 4; // 00000101 ^ 00000100 = 00000001
System.out.println(b1 + " " + b2 + " " + b3);


for (int row = 1; row <= n; row++) {
	for (int col = 1; col <= row; col++) {
		System.out.print(col + " ");
	}
	System.out.println();
}


String[] capitals = {"Sofia", "Washington", "London", "Paris"};
for (String capital : capitals) {
	System.out.println(capital);
}


int[][] intMatrix = new int[3][4];
float[][] floatMatrix = new float[8][2];
String[][][] stringCube = new String[5][5][5];


int[][] matrix = {
	{1, 2, 3, 4}, // row 0 values
	{5, 6, 7, 8}, // row 1 values
};
int[] myArray = new int[6];
myArray = {1, 2, 3, 4, 5};
System.out.println(Arrays.toString(myArray));
System.out.println(Arrays.deepToString(matrix));


int[][] myInts = { {1, 2, 3}, {91, 92, 93, 94}, {2001, 2002} };


for (int row = 0; row < matrix.length; row++) {
	for (int col = 0; col < matrix[0].length; col++) {
		System.out.printf("%d ", matrix[row][col]);
	}
	System.out.println();
}


int charIndex = (int) ch – (int) 'A';


import java.math.BigDecimal;
public class Precision {
	public static void main(String[] args) {
		double sum = 0.0d;
		BigDecimal bdValue = new BigDecimal("0.1");
		BigDecimal bdSum = new BigDecimal("0.0");
		for(int i=1; i<=10; i++) {
			sum += 0.1d;
			bdSum = bdSum.add(bdValue);
		}
		System.out.println("Double sum is: " + sum);
		System.out.println("BigDecimal sum is: " + bdSum);
	}
}


Float.floatToRawIntBits();
Double.doubleToRawLongBits();


public static void modifyArr(int[] arrParam) {
	arrParam[0] = 5;
	System.out.print("In modifyArr() the param is: ");
	System.out.println(Arrays.toString(arrParam));
}
public static void main(String[] args) {
	int[] arrArg = new int[] { 1, 2, 3 };
	System.out.print("Before modifyArr() the argument is: ");
	System.out.println(Arrays.toString(arrArg));
	// Modifying the array's argument
	modifyArr(arrArg);
	System.out.print("After modifyArr() the argument is: ");
	System.out.println(Arrays.toString(arrArg));
}


public class SystemTest {
	public static void main(String[] args) {
		int sum = 0;
		long startTime = System.currentTimeMillis();
		// The code fragment to be tested
		for(int i = 0; i < 10000000; i++) {
			sum++;
		}
		long endTime = System.currentTimeMillis();
		System.out.printf("The time elapsed is %f sec",
				(endTime - startTime)/1000.0);
	}
}


public class MathTest {
	public static void main(String[] args) {
		java.util.Scanner input = new java.util.Scanner(System.in);
		System.out.println("Length of the first side:");
		double a = input.nextDouble();
		System.out.println("Length of the second side:");
		double b = input.nextDouble();
		System.out.println("Size of the angle in degrees:");
		int angle = input.nextInt();
		System.out.printf("Face of the triangle: %f%n",
				0.5 * a * b * Math.sin(Math.toRadians(angle)));
	}
}


import java.util.Random;
public class TOTO649 {
	public static void main(String[] args) {
		Random rand = new Random();
		for (int number=1; number<=6; number++) {
			int randomNumber = rand.nextInt(49) + 1;
			System.out.printf("%d ", randomNumber);
		}
	}
}


public class PackageImportTest {
	public static void main(String[] args) {
		java.util.Scanner input = new java.util.Scanner(System.in);
		java.util.ArrayList<Integer> ints = new
				java.util.ArrayList<Integer>();
		java.util.ArrayList<Double> doubles = new
				java.util.ArrayList<Double>();
		while(true) {
			System.out.println("Enter an int or a double:");
			if(input.hasNextInt()) {
				ints.add(input.nextInt());
			} else if(input.hasNextDouble()) {
				doubles.add(input.nextDouble());
			} else {
				break;
			}
		}
		System.out.printf("You entered these ints: %s%n",
				ints.toString());
		System.out.printf("You entered these doubles: %s%n",
				doubles.toString());
	}
}


import java.util.*;
public class PackageImportTest {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		ArrayList<Integer> ints = new ArrayList<Integer>();
		ArrayList<Double> doubles = new ArrayList<Double>();
		while(true) {
			System.out.println("Enter an int or a double:");
			if(input.hasNextInt()) {
				ints.add(input.nextInt());
			} else if(input.hasNextDouble()) {
				doubles.add(input.nextDouble());
			} else {
				break;
			}
		}
		System.out.printf("You entered these ints: %s%n",
				ints.toString());
		System.out.printf("You entered these doubles: %s%n",
				doubles.toString());
	}
}


String msg = "Stand up, stand up, Balkan superman.";
System.out.printf("msg = \"%s\"%n", msg);
System.out.printf("msg.length() = %d%n", msg.length());
for (int i = 0; i < msg.length(); i++) {
	System.out.printf("msg[%d] = %c%n", i, msg.charAt(i));
}


String quote = "Book’s title is \"Intro to Java\"";
String word1 = "Java";
String word2 = "JAVA";
System.out.println(word1.equals(word2)); // false
System.out.println(word1.equalsIgnoreCase(word2)); // true


String score = "sCore";
String scary = "scary";
System.out.println(score.compareToIgnoreCase(scary)); // 14
System.out.println(scary.compareToIgnoreCase(score)); // -14
System.out.println(scary.compareTo(score)); // 32


String str1 = new String("Hello");
String str2 = str1;
System.out.println((str1==str2)); // true (memory adress comparison)


String hel = "Hel";
String hello = "Hello";
String copy = hel + "lo";
System.out.println(copy == hello); // false


String hello = "Hello";
String same = "Hello";
System.out.println(same == hello); // true
String str1 = new String("Hello");
String str2 = new String("Hello");
System.out.println((str1==str2)); // false


String greet = "Hello, ";
String name = "reader!";
String result = greet.concat(name);

String greet = "Hello, ";
String name = "reader!";
String result = greet + name;

result += " How are you?";


String book = "Introduction to Java book";
int index = book.indexOf("Java");
System.out.println(index); // index = 16


String quote = "The main subject in the \"Intro Java\"" +
		" book is Java for Java newbies.";
int index = quote.indexOf("Java");
while(index != -1) {
	System.out.println("Java found on index: " + index);
	index = quote.indexOf("Java", index + 1);
}


String str = "Java Programming Course";
int index = str.indexOf("Java"); // index = 0
index = str.indexOf("Course"); // index = 17
index = str.indexOf("COURSE"); // index = -1
// indexOf() is case sensetive. -1 means "not found"
index = str.indexOf("ram"); // index = 9
index = str.indexOf("r"); // index = 6
index = str.indexOf("r", 7); // index = 9
index = str.indexOf("r", 10); // index = 20


String path = "C:\\Pics\\Rila2008.jpg";
String filename = path.substring(8, 16);
// filename = "Rila2008"


String path = "C:\\Pics\\Rila2008.jpg";
int index = path.lastIndexOf("\\"); // index = 7
String fullName = path.substring(index + 1);
// fullname = "Rila2008.jpg"


String listOfBeers = "Amstel, Zagorka, Tuborg, Becks.";
String[] beersArr = listOfBeers.split("[ ,.]");
for(String beer : beersArr) {
	if(!beer.equals("")) {
		System.out.println(beer);
	}
}

String[] beersArr = listOfBeers.split("[ ,.]+");


String small = "[a-z]";
String allLetters= "[a-zA-Zа-яА-Я]";
String nan = "[^0-9]";

String doc = "Hello, some@mail.bg, " +
		"you have been using some@mail.bg in your registration.";
String fixedDoc = doc.replace("some@mail.bg", "new@mail.com");
System.out.println(fixedDoc);


String doc = "Smith's number: 0892880022 \n"+
		"Franky can be found at 0853445566 \n" +
		"so as Steven - 0811654321";
replacedDoc = doc.replaceAll("(08)[0-9]{8}", "$1********");
System.out.println(replacedDoc);


String text = "All Kind OF LeTTeRs";
System.out.println(text.toLowerCase());
// all kind of letters


String pass1 = "Parola";
String pass2 = "PaRoLa";
String pass3 = "parola";
boolean isEqual;
isEqual = pass1.toUpperCase().equals("PAROLA") ; // true
isEqual = pass2.toUpperCase().equals("PAROLA") ; // true
isEqual = pass3.toUpperCase().equals("PAROLA") ; // true


String fileData = "    \n\n Mario Peshev   ";
String reduced = fileData.trim();


StringBuilder sb = new StringBuilder(15);
sb.append("Hello,Java!");


Date currentDate = new Date();
System.out.println(currentDate);
// Thu Aug 28 11:34:27 EEST 2008

Date currentDate = new Date();
System.out.println(currentDate.toString());


String text = "53";
int intValue = Integer.parseInt(text); // 53

String text = "True";
Boolean boolValue = Boolean.parseBoolean(text); // true


String text = "27.10.2008";
String[] dateElements = text.split("[.]");
String dayString = dateElements[0];
String monthString = dateElements[1];
String yearString = dateElements[2];
int day = Integer.parseInt(dayString);
int month = Integer.parseInt(monthString);
int year = Integer.parseInt(yearString);
Calendar cal = new GregorianCalendar(year, month - 1, day);
Date date = cal.getTime(); // Mon Oct 27 00:00:00 EET 2008


SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
Date date = sdf.parse("27.10.2008");
System.out.println(date); // Mon Oct 27 00:00:00 EET 2008


SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
String userInput = "27/12/2008";
try {
	Date date = sdf.parse(userInput);
	System.out.println(date);
}
catch(ParseException pe) {
	System.out.println("Error in parsing " + userInput);
	// Error in parsing 27/12/2008
}


SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
Date date = sdf.parse("27.13.2008");
System.out.println(date); // Tue Jan 27 00:00:00 EET 2009


String pattern = "HH часа и mm мин.";
SimpleDateFormat sdf = new SimpleDateFormat(pattern);
Date dateNow = new Date();
System.out.println(dateNow); // Sun Oct 12 15:57:39 EEST 2008
String formattedDate = sdf.format(dateNow);
System.out.println(formattedDate); // 15 часа и 57 мин.


String pattern = "EEEE, dd.MM.yyyy г.";
SimpleDateFormat sdf = new SimpleDateFormat(pattern);
Date dateNow = new Date();
System.out.println(dateNow); // Sun Oct 12 16:09:04 EEST 2008
String formattedDate = sdf.format(dateNow);
System.out.println(formattedDate); // Неделя, 12.10.2008 г.


int add(int number1, int number2) {
	int result = number1 + number2;
	return result;
}


public Lecture(String subject, String... studentsNames) {
// ... Initialization of the instance variables ...
}

Lecture lecture =
	new Lecture("Biology", "Pencho", "Mincho", "Stancho");


public Dog() {
	this("Sharo");
}
// Constructor call
public Dog(String name) {
	this(name, 1);
} // Constructor call
public Dog(String name, int age) {
	this(name, age, 0.3);
} // Constructor call
public Dog(String name, int age, double length) {
	this(name, age, length, new Collar()); // Constructor call
}
public Dog(String name, int age, double length, Collar collar) {
	this.name = name;
	this.age = age;
	this.length = length;
	this.collar = collar;
}


public void doSth(final int arg) {
// Do something...
}


// Getting property
String colourName = dogInstance.getColour();
// Setting property
dogInstance.setColour("black");


public static final double PI = 3.141592653589793;
public static final double E = 2.718281828459045;
public static final char PATH_SEPARATOR = '/';
public static final String BIG_COFFEE = "big";
public static final int MAX_VALUE = 2147483647;


// Link the File variable to a file on the computer
File file = new File("test.txt");
// Create a Scanner connected to a file and specify encoding
Scanner fileReader = new Scanner(file, "windows-1251");
// Read file here...
// Close the resource after you've finished using it
fileReader.close();


// Link the File variable to a file on the computer
File file = new File("sample.txt");
// Next line may throw an exception!
Scanner fileReader = new Scanner(file);
int lineNumber = 0;
// Read file
while (fileReader.hasNextLine()) {
	lineNumber++;
	System.out.printf("Line %d: %s%n",
			lineNumber, fileReader.nextLine());
}
// Close the resource after you've finished using it
fileReader.close();


PrintStream fileWriter = new PrintStream(
		"test.txt", "windows-1251");


// Create a PrintStream instance
PrintStream fileWriter = new PrintStream("numbers.txt");
// Loop through the numbers from 1 to 20 and write them
for (int num = 1; num <= 20; num++) {
	fileWriter.println(num);
}
// Close the stream when you are done using it
fileWriter.close();


String fileName = "sample.txt";
Scanner fileReader = null;
int lineNumber = 0;
try {
	fileReader = new Scanner(new File(fileName));
	System.out.println("File " + fileName + " opened.");
	while (fileReader.hasNextLine()) {
		lineNumber++;
		System.out.printf("Line %d:%s%n",
		lineNumber, fileReader.nextLine());
	}
} catch (FileNotFoundException fnf) {
	System.out.println("File " + fileName + " not found.");
} catch (NullPointerException npe) {
	System.out.println("File " + fileName + " not found.");
} finally {
	// Close the scanner in the finally block
	if (fileReader != null) {
		fileReader.close();
	}
	System.out.println("Scanner closed.");
}


import java.util.ArrayList;
import java.util.Date;
public class ArrayListExample {
	public static void main(String[] args) {
		ArrayList list = new ArrayList();
		list.add("Hello");
		list.add(5);
		list.add(3.14159);
		list.add(new Date());
		for (int i = 0; i < list.size(); i++) {
			Object value = list.get(i);
			System.out.printf("Index=%d; Value=%s\n", i, value);
		}
	}
}


ArrayList list = new ArrayList();
list.add(2);
list.add(3);
list.add(4);
int sum = 0;
for (int i = 0; i < list.size(); i++) {
	Integer value = (Integer) list.get(i);
	sum = sum + value.intValue();
}
System.out.println("Sum = " + sum);
// Output: Sum = 9


GenericType<T> instance = new GenericType<T>();
ArrayList<Integer> intList = new ArrayList<Integer>();
ArrayList<Boolean> boolList = new ArrayList<Boolean>();
ArrayList<Double> realNumbersList = new ArrayList<Double>();

ArrayList<Integer> genericList = new ArrayList<Integer>();

ArrayList<Integer> genericList = new ArrayList<Integer>();
ArrayList<Object> objList = new ArrayList<Object>();
ArrayList plainList = new ArrayList();

ArrayList<Integer> list = new ArrayList<Integer>();
list.add(2);
list.add(3);
list.add(4);
list.add(5);


LinkedList<T> == ArrayList<T>


public static void main(String[] args) {
	Stack<String> stack = new Stack<String>();
	stack.push("1. Ivan");
	stack.push("2. Nikolay");
	stack.push("3. Maria");
	stack.push("4. George");
	System.out.println("Top = " + stack.peek());
	while (stack.size() > 0) {
		String personName = stack.pop();
		System.out.println(personName);
	}
}


public static void main(String[] args) {
	Queue<String> queue = new LinkedList<String>();
	queue.offer("Message One");
	queue.offer("Message Two");
	queue.offer("Message Three");
	queue.offer("Message Four");
	while (queue.size() > 0) {
		String msg = queue.poll();
		System.out.println(msg);
	}
}


TreeSet<Integer> treeSet = new TreeSet<Integer>();
treeSet.add(5);
treeSet.add(8);
treeSet.add(1);
treeSet.add(6);
treeSet.add(3);
treeSet.remove(6);
for (int i : treeSet) {
	System.out.printf(" %d", i);
}
// Result: 1 3 5 8


Comparator<String> caseInsensitiveComparator =
		new Comparator<String>(){
	@Override
	public int compare(String o1, String o2) {
		return o1.compareToIgnoreCase(o2);
	}
};


Map<String, Integer> words =
	new TreeMap<String, Integer>(caseInsensitiveComparator);


Map<String, Double> studentsMarks =
	new HashMap<String, Double>(6);
studentsMarks.put("Pesho", 3.00);
studentsMarks.put("Gosho", 4.50);
studentsMarks.put("Nakov", 5.50);
studentsMarks.put("Vesko", 3.50);
studentsMarks.put("Tsanev", 4.00);
studentsMarks.put("Nerdy", 6.00);
Double tsanevMark = studentsMarks.get("Tsanev");
System.out.printf("Tsanev's mark: %.2f %n", tsanevMark);
studentsMarks.remove("Tsanev");
System.out.println("Tsanev removed.");
System.out.printf("Is Tsanev in the hash table: %b %n",
	studentsMarks.containsKey("Tsanev"));
studentsMarks.put("Nerdy", 3.25);
System.out.println("Nerdy's mark changed.");
System.out.println("Students and marks:");
for (Map.Entry<String, Double> studentMark
		: studentsMarks.entrySet()) {
	System.out.printf("%s has %.2f%n",
	studentMark.getKey(), studentMark.getValue());
}
System.out.printf("There are %d students.%n",
	studentsMarks.size());
studentsMarks.clear();
System.out.println("Students hashmap cleared.");
System.out.printf("Is hash table empty: %b%n",
	studentsMarks.isEmpty());


@Override
public int hashCode() {
	return 53;
}


public static <E> Set<E> union(Set<E> set1, Set<E> set2) {
	// Here we use HashSet but you can use TreeSet if appropriate
	Set<E> union = new HashSet<E>();
	union.addAll(set1);
	union.addAll(set2);
	return union;
}


public static <E> Set<E> intersect(Set<E> set1, Set<E> set2) {
	// Here we use HashSet but you can use TreeSet if appropriate
	Set<E> intersect = new HashSet<E>();
	intersect.addAll(set1);
	intersect.retainAll(set2);
	return intersect;
}


Set<String> javaStudents = new HashSet<String>();
javaStudents.add("S. Nakov");
javaStudents.add("V. Kolev");
javaStudents.add("V. Tsanev");
Set<String> linuxStudents = new HashSet<String>();
linuxStudents.add("D. Alexiev");
linuxStudents.add("V. Tsanev");
System.out.println("Java Students: " + javaStudents);
System.out.println("Linux Students: " + linuxStudents);
System.out.println("Java or Linux Students: " +
	union(javaStudents, linuxStudents));
System.out.println("Java and Linux Students: " +
	intersect(javaStudents, linuxStudents));


String[] bandNames = new String[] {
	"manowar", "blind guardian", "dio",
	"grave digger", "slayer", "seputltura", "kiss", "sodom",
	"manowar", "megadeth", "dio", "judas priest", "slayer",
	"manowar", "kreator", "blind guardian", "iron maiden",
	"accept", "seputltura", "iced earth", "manowar", "slayer",
	"manowar", "helloween", "running wild", "manowar",
	"sodom", "kiss", "iron maiden", "manowar", "manowar",
	"sodom", "manowar", "slayer", "blind guardian", "accept",
	"grave digger", "accept", "seputltura", "dio",
	"running wild", "manowar", "iron maiden", "kiss",
	"manowar", "manowar", "kiss", "manowar", "slayer",
	"seputltura", "manowar", "manowar", "blind guardian",
	"iron maiden", "sodom", "dio", "accept", "manowar",
	"slayer", "megadeth", "dio", "manowar", "running wild",
	"grave digger", "accept", "kiss", "manowar", "iron maiden",
	"manowar", "judas priest", "sodom", "iced earth",
	"manowar", "dio", "iron maiden", "manowar", "slayer",
	"manowar" };
SortedSet<String> uniqueBandNames = new TreeSet<String>();
for (String bandName : bandNames) {
	uniqueBandNames.add(bandName);
}
System.out.println("List of sorted and unique band names:");
for (String bandName : uniqueBandNames) {
	System.out.println(bandName);
}


int findMaxElement(int[] array) {
	int max = array[0];
	for (int i=1; i<array.length; i++) {
		if (array[i] > max) {
			max = array[i];
		}
	}
	return max;
}


int findInversions(int[] array) {
	int inversions = 0;
	for (int i=0; i<array.length; i++) {
		for (int j = i+1; j<array.length; j++) {
			if (array[i] > array[j]) {
				inversions++;
			}
		}
	}
	return inversions;
}


long sum3(int n) {
	long sum = 0;
	for (int a = 0; a < n; a++) {
		for (int b = 0; b < n; b++) {
			for (int c = 0; c < n; c++) {
				sum += a * b * c;
			}
		}
	}
	return sum;
}


long sumMN(int n, int m) {
	long sum = 0;
	for (int x = 0; x < n; x++) {
		for (int y = 0; y < m; y++) {
			sum += x * y;
		}
	}
	return sum;
}


long sumMN(int n, int m) {
	long sum = 0;
	for (int x = 0; x < n; x++) {
		for (int y = 0; y < m; y++) {
			if (x == y) {
				for (int i = 0; i < n; i++) {
					sum += i * x * y;
				}
			}
		}
	}
	return sum;
}


long factorial(int n) {
	if (n == 0) {
		return 1;
	} else {
		return n * factorial(n - 1);
	}
}


long fibonacci(int n) {
	if (n == 0) {
		return 1;
	} else if (n == 1) {
		return 1;
	} else {
		return fibonacci(n - 1) + fibonacci(n - 2);
	}
}


public static long fibonacci(int n) {
	long fn = 1;
	long fn_1 = 1;
	long fn_2 = 1;
	for (int i = 2; i < n; i++) {
		fn = fn_1 + fn_2;
		fn_2 = fn_1;
		fn_1 = fn;
	}
	return fn;
}


String[] words = {"море", "бира", "пари", "кеф"};
Queue<Set<String>> subsetsQueue = new LinkedList<Set<String>>();
Set<String> emptySet = new HashSet<String>();
subsetsQueue.offer(emptySet);
while (! subsetsQueue.isEmpty()) {
	Set<String> subset = subsetsQueue.poll();
	System.out.println(subset);
	for (String element : words) {
		if (! subset.contains(element)) {
			Set<String> newSubset = new HashSet<String>();
			newSubset.addAll(subset);
			newSubset.add(element);
			subsetsQueue.offer(newSubset);
		}
	}
}


T extends Comparable<T>;

public interface Comparable<T> {
/**
* Compares this object with the specified object for order.
* @param obj - the Object to be compared
* @return a negative integer, zero, or a positive integer as
* this object is less than, equal to, or greater than the
* specified object.
*/
	int compareTo(T obj);
}


package introjavabook;
public class ObjectExample {
	public static void main(String... args) {
		AfricanLion africanLion = new AfricanLion();
		// Implicit casting
		Object object = africanLion;
	}
}


package introjavabook;
public class ToStringExample {
	public static void main(String... args) {
		AfricanLion africanLion = new AfricanLion();
		System.out.println(africanLion.toString());
		// Result: "introjavabook.AfricanLion@de6ced"
	}
}


Public class Object {
// ...
	public String toString() {
		return getClass().getName() +
			"@" + Integer.toHexString(hashCode());
	}
// ...
}


public class AfricanLion extends Lion {
// ...
	public AfricanLion(boolean male, int weight) {
		super(male, weight);
	}

	@Override
	public String toString() {
		return String.format(
			"(AfricanLion, male: %s, weight: %s)",
			this.isMale(), this.getWeight());
	}
// ...
}


package introjavabook;
public class ToStringExample {
	public static void main(String... args) {
		AfricanLion africanLion = new AfricanLion(true, 15);
		System.out.println(africanLion);
		// Result: "[AfricanLion, male: true, weight: 15]"
	}
}


public class AfricanLion extends Lion {
// ...
	@Override
	public String toString() {
		return String.format(
			"(AfricanLion, male: %s, weight: %s)",
			this.isMale(), this.getWeight());
	}
// ...
}


package introjavabook;
public class TransitiveInheritance {
	public static void main(String... args) {
		AfricanLion africanLion = new AfricanLion(true, 15);
		// Method defined in Felidae
		africanLion.isMale();
		// Method defined in Felidae
		africanLion.setMale(true);
	}
}


package introjavabook;
public class Country {
	/** Country's capital. */
	private Capital capital;
	// ...
	public Capital getCapital() {
		return capital;
	}

	public void setCapital(Capital capital) {
		this.capital = capital;
	}
// ...
}

package introjavabook;
public class Capital {}


package introjavabook;
public class AbstractDataExample {
	public static void main(String... args) {
		Lion lion = new Lion(true, 150);
		Felidae bigCat1 = lion;
		AfricanLion africanLion = new AfricanLion();
		Felidae bigCat2 = africanLion;
	}
}


package introjavabook;
public interface Reproducible {
	Mammal[] reproduce(Mammal mate);
}


package introjavabook;
public class Lion extends Felidae implements Reproducible {
// ...
	public Mammal[] reproduce(Mammal anotherLion) {
		return new Mammal[]{new Lion(), new Lion()};
	}
}


package introjavabook;
public abstract class Felidae { // Latin for cat
// ...
	public abstract void walk();
}

package introjavabook;
public class Lion extends Felidae implements Reproducable {
	// ...
	private movePaw(Paw paw) {
	// ...
	}
	@Override
	public void walk() {
		this.movePaw(frontLeft);
		this.movePaw(frontRight);
		this.movePaw(bottomLeft);
		this.movePaw(bottomRight);
	}
}


package java.util;
public class ArrayList<E> extends AbstractList<E>
		implements List<E>, RandomAccess, Cloneable, Serializable {
	private static final long serialVersionUID =
		8683452581122892189L;
	private transient Object[] elementData;
	private int size;
	private void fastRemove(int index) { ... }
	private void rangeCheck(int index) { ... }
	private void writeObject(ObjectOutputStream s) { ... }
	private void readObject(ObjectInputStream s) { ... }
}


package introjavabook;
public abstract class Felidae {// Latin for cat
// ...
	public boolean isMale() {
		return male;
	}
	public void setMale(boolean male) {
		this.male = male;
	}
	public abstract boolean catchPray(Object pray);
}

package introjavabook;
public class Lion extends Felidae {
// ...
	public boolean catchPray(Object pray) {
		super.hide();
		this.ambush();
		super.run();
		// ...
	}
}

package introjavabook;
public abstract class Animal {
	public void printInformation() {
		System.out.println("I am " +
			this.getClass().getSimpleName() + ".");
		System.out.println(getTypicalSound());
	}
	protected abstract String getTypicalSound();
}

package introjavabook;
public class Cat extends Animal {
	@Override
	protected String getTypicalSound() {
	return "Miaoooow!";
	}
	public static void main(String[] args) {
		Animal cat = new Cat();
		cat.printInformation();
		// Output:
		//I am Cat.
		//Miaoooow!
	}
}


package introjavabook;
public class Lion extends Felidae {
// ...
	public void catchPray(Object pray) {
		System.out.println("Lion.catchPray");
	}
}

package introjavabook;
public class AfricanLion extends Lion {
// ...
	public void catchPray(Object pray) {
		System.out.println("AfricanLion.catchPray");
	}
}

package introjavabook;
public class VirtualMethodsExample {
	public static void main(String... args) {
		{
			Lion lion = new Lion();
			lion.catchPray(null);
			// Will print "Lion.catchPray"
		}
		{
			AfricanLion lion = new AfricanLion();
			lion.catchPray(null);
			// Will print "AfricanLion.catchPray"
		}
		{
			Lion lion = new AfricanLion();
			lion.catchPray(null);
			// Will print "AfricanLion.catchPray", because
			// the variable lion has value of type AfricanLion
		}
	}
}


package introjavabook;
public class Lion extends Felidae {
// ...
	public void catchPray(Object pray) {
		System.out.println("Lion.catchPray");
	}
}


package introjavabook;
public class AfricanLion extends Lion {
// ...
	public boolean catchPray(Object pray) {
		System.out.println("AfricanLion.catchPray");
		System.out.println("calling super.catchPray(pray)");
		super.catchPray(pray);
	}
}


class Report {
	public boolean loadFromFile(String fileName) {...}
	public boolean saveToFile(String fileName) {...}
}
class Printer {
	public static int print(Report report) {...}
}
class Example {
	public static void main(String[] args) {
		Report myReport = new Report();
		myReport.loadFromFile("DailyReport.xml");
		Printer.print(myReport);
	}
}


protected Account[] customerAccounts;
for (int i = 0; i < customers.Length; i++) { ... }

public class ThreadPool {
	public static final int MAX_POOL_SIZE = 16;
}


for (List<DictionaryEntry<K, V>> chain :
		this.getHashTableStorage()) {
	if (chain != null) {
		entries.addAll(chain);
	}
}


public static void printList(ArrayList<Integer> list) {
	System.out.print("{ ");
	for (Integer item : list) {
		System.out.print(item);
		System.out.print(" ");
	}
	System.out.println("}");
}
public static void main(String[] args) {
	ArrayList<Integer> firstList = new ArrayList<Integer>();
	firstList.add(1);
	firstList.add(2);
	firstList.add(3);
	firstList.add(4);
	firstList.add(5);
	System.out.print("firstList = ");
	printList(firstList);
	ArrayList<Integer> secondList = new ArrayList<Integer>();
	secondList.add(2);
	secondList.add(4);
	secondList.add(6);
	System.out.print("secondList = ");
	printList(secondList);
	ArrayList<Integer> unionList = new ArrayList<Integer>();
	unionList.addAll(firstList);
	unionList.removeAll(secondList);
	unionList.addAll(secondList);
	System.out.print("union = ");
	printList(unionList);
}


DictionaryEntry<K, V> newEntry =
	new DictionaryEntry<K, V>(key, value);

this.table = new List[capacity];
this.loadFactor = loadFactor;
this.threshold = (int) (this.table.length * this.loadFactor);

System.out.printf(
	"word '%s' is seen %d times in the text%n",
	wordEntry.getKey(),
	wordEntry.getValue());


public void archive(PersonData person, boolean persistent) {
// ...
}
public void retrieve(PersonData person, boolean persistent) {
// ...
}

int salary = days * hoursPerDay * ratePerHour;
return salary;


public class Globals {
	public static int state = 0;
}
public class Genious {
	public static void printSomething() {
		if (Globals.state == 0) {
			System.out.println("Hello.");
		} else {
			System.out.println("Good bye.");
		}
	}
}


int[] numbers = new int[100];
for (int i=0; i<numbers.length; i++) {
	numbers[i] = i;
}
for (int i=0; i<numbers.length/2; i++) {
	numbers[i] = numbers[i] * numbers[i];
}
int count = 0;
for (int i=0; i<numbers.length; i++) {
	if (numbers[i] % 3 == 0) {
		count++;
	}
}
System.out.println(count);


for (int i=0; i<xCoord.length; i++) {
	for (int j=0; j<yCoord.length; j++) {
		int maxStartIndex = findMax(i) + 1;
		int minStartIndex = findMax(i) - 1;
		int minXcoord = xCoord[minStartIndex];
		int maxXcoord = xCoord[maxStartIndex];
		int minYcoord = yCoord[minStartIndex];
		int maxYcoord = yCoord[maxStartIndex];
		matrix[i][j] =
			matrix[maxXcoord][minYcoord] *
			matrix[maxYcoord][minXcoord];
	}
}


public class MathUtils {
	public static final double PI = 3.14159206;
	public static double calcCircleArea(double radius) {
		double area = PI * radius * radius;
		return area;
	}
	public static double calcCirclePerimeter(double radius) {
		double perimeter = 2 * PI * radius;
		return perimeter;
	}
	public static double calcElipseArea(double axis1,
	double axis2) {
		double area = PI * axis1 * axis2;
		return area;
	}
}


int value = 1;
switch (value) {
	case 1:
		System.out.println("One");
		break;
	case 2:
		System.out.println("Two");
		break;
	case 3:
		System.out.println("Three");
		break;
	default:
		System.out.println("default");
		break;
}


if (maxElem != Integer.MAX_VALUE) {
	maxElem = findMax(arr, i);
}
private static int findMax(int[] arr, int i) {
	if (arr[i] < arr[i + 1]) {
		int maxElem = max(arr[i + 1], arr[i + 2], arr[i + 3]);
		return maxElem;
	} else {
		int maxElem = max(arr[i], arr[i + 2], arr[i + 3]);
		return maxElem;
	}
}
private static int max(int i, int j, int k) {
	if (i < j) {
		int maxElem = max(j, k);
		return maxElem;
	} else {
		int maxElem = max(i, k);
		return maxElem;
	}
}
private static int max(int i, int j) {
	if (i < j) {
		return j;
	} else {
		return i;
	}
}


public int archive(PersonData user, boolean persistent) {
	assert user != null;
	// Do some processing
	int resultFromProcessing = ...
		assert resultFromProcessing >= 0 :
		"resultFromProcessing is negative. There is a bug";
	return resultFromProcessing;
}


public int archive(PersonData user, boolean persistent) {
	if (user == null) {
		throw new StorageException("null parameter");
	}
	// Do some processing
	int resultFromProcessing = ...
		assert resultFromProcessing >= 0 :
		"resultFromProcessing is negative. There is a bug";
	return resultFromProcessing;
}


/**
* A class representing a thread pool. It works with {@link
* Thread}s that it keeps alive for reuse.
*
* Usage:
* <code>
*
TreadPool pool = new ThreadPool();
* </code>
*
* @author author
* @version 1.0
* @see java.lang.Thread
*/
public class ThreadPool {
/** Some comment here */
	public static final int MAX_POOL_SIZE = 16;
}


/**
* @return a list of all primes in given range [start, end].
* A number num is prime if it can not be divided to any number
* in the range [2, sqrt(num)]. We check condition this for all
* numbers in the given range.
*/
public static ArrayList<Integer> getPrimes(int start, int end) {
	ArrayList<Integer> primesList = new ArrayList<Integer>();
	for (int num = start; num <= end; num++) {
		boolean prime = true;
		for (int div = 2; div <= Math.sqrt(num); div++) {
			if (num % div == 0) {
				// Found a divider -> num is not prime
				prime = false;
				break;
			}
		}
		if (prime) {
			primesList.add(num);
		}
	}
	return primesList;
}
