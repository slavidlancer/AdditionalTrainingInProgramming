class creation, instances, objects, properties, methods, use
string[] array as property, class member
public class Customer
{
    public string CustomerName { get; set; }

    public double[] TotalPurchasesLastThreeDays { get; set; }
}

public class Customer
    {
        private double[] totalPurchasesLastThreeDays; 

        public string CustomerName { get; set; }

        public double[] TotalPurchasesLastThreeDays
        {
            get
            {
                return totalPurchasesLastThreeDays;
            }
            set
            {
                totalPurchasesLastThreeDays = value;
            }
        }
    }

public Customer()
{
    totalPurchasesLastThreeDays = new double[] { 100, 50, 250 };
}

with indexer

public double this[int i] {
  get { return totalPurchasesLastThreeDays[i]; }
  set { totalPurchasesLastThreeDays[i] = value; }
}

public class MyClass {
        public MyClass() {}

        /// <summary>
        /// Size of array.
        /// </summary>
        public const int Counter = 10;

        /// <summary>
        /// Widget: an array of widgets.
        /// </summary>
        private static int[] _widget = new int[Counter];
        public static int [] Widget {
            get { return _widget; }
            set { _widget = value; }
        }
    }


stringbuilder as field, property, class member
public class SomeClass
{
    private StringBuilder stringBuilder;

    // Property declaration
    public StringBuilder StringBuilder
    {
        get 
        { 
            if(this.stringBuilder == null)
                this.stringBuilder = new StringBuidler();

            return this.stringBuilder;
        }
        set
        {
            if(this.stringBuilder == null)
                this.stringbuilder = value;
        }
    }
}


nested class, members, access, initialization, inheritance, use
public class Container
{
    public class Nested
    {
        private Container parent;

        public Nested()
        {
        }
        public Nested(Container parent)
        {
            this.parent = parent;
        }
    }
}

Container.Nested nest = new Container.Nested(); //new instance of the nested class

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine("DemoClass");

        OuterClass oc = new OuterClass();
        OuterClass.NestedClass reference = oc.CreateObjectOfNestedClass();
    }
}

class OuterClass
{
    public class NestedClass
    {

    }
    public NestedClass CreateObjectOfNestedClass()
    {
        NestedClass obj = new NestedClass();
        return obj;
    }
}

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine("DemoClass");
        OuterClass.NestedClass reference = new OuterClass.NestedClass();
    }
}

class OuterClass
{
    public class NestedClass
    {

    }
}

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine(OuterClass.NestedClass.x);     
    }
}

class OuterClass
{
    public class NestedClass
    {
        public static int x = 100;
    }
}

class Demo
{
  public static void Main()
  {
      System.Console.WriteLine("Demo");
      OuterClass.NestedClass.abc();     
  }
}
 
class OuterClass
{
   public static int y = 100;
 
   public class NestedClass
   {
      public static void abc()
      {
              System.Console.WriteLine(OuterClass.y);     
      }
   }
}

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine("Demo");
        OuterClass.NestedClass.abc();     
    }
}

class OuterClass
{
    public int y = 100;

    public class NestedClass
    {
        public static void abc()
        {
            OuterClass oc = new OuterClass();
            System.Console.WriteLine(oc.y);     
        }
    }
}

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine("Demo");
        OuterClass oc = new OuterClass();    
    }
}

class OuterClass
{
    public OuterClass()
    {
        System.Console.WriteLine("OuterClass");     
    }

    public class NestedClass
    {
        public NestedClass()
        {
            System.Console.WriteLine("NestedClass");     
        }
    }
}

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine("Demo");
        OuterClass.NestedClass nc = new OuterClass.NestedClass();    
    }
}

class OuterClass
{
    public OuterClass()
    {
        System.Console.WriteLine("OuterClass");     
    }

    public class NestedClass
    {
        public NestedClass()
        {
            System.Console.WriteLine("NestedClass");     
        }
    }
}

class OuterClass
{
    public OuterClass()
    {
        System.Console.WriteLine("OuterClass");     
    }

    public class NestedClass
    {
        public NestedClass()
        {
            System.Console.WriteLine("NestedClass");     
        }
    }
}

class Demo : OuterClass
{
    public static void Main()
    {
        Demo dc = new Demo();    
        System.Console.WriteLine("Demo");
    }
}

class Demo
{
    public static void Main()
    {
        System.Console.WriteLine("Demo");
        OuterClass.NestedClass.abc();     
    }
}

class OuterClass
{
    private int y = 100;

public class NestedClass : OuterClass
{
    public static void abc()
    {
        OuterClass oc = new OuterClass();
        System.Console.WriteLine(oc.y);     
    }
}
}

class A
{
    public int _v1;

    public class B
    {
	public int _v2;
    }
}

class Program
{
    static void Main()
    {
	A a = new A();
	a._v1++;

	A.B ab = new A.B();
	ab._v2++;
    }
}

public class Journal
{
    public class JournalEntry
    {
        protected JournalEntry(object value)
        {
            this.Timestamp = DateTime.Now;
            this.Value = value;
        }

        public DateTime Timestamp { get; private set; }
        public object Value { get; private set; }
    }

    private class JournalEntryInstance: JournalEntry
    { 
        public JournalEntryInstance(object value): base(value)
        { }
    }
    JournalEntry CreateEntry(object value)
    {
        return new JournalEntryInstance(value);
    }
}


list, dictionary as class members
private readonly field, new in the constructor, add/remove/etc. functions in methods


string type, features, comparison with stringbuilder
string a,b,c,d;
StringBuilder e = new StringBuilder();
 e.Append(b);
 e.Append(c);
 e.Append(d);
 a = e.ToString();

string s = string.Empty;
for (i = 0; i < 1000; i++) { //long and a lot of memory is wasted, slower
  s += i.ToString() + " ";
}


StringBuilder sb = new StringBuilder();
for (i = 0; i < 1000; i++) { //faster
  sb.Append(i);
  sb.Append(' ');
}

string foo = "abc" + "def" + "efg" + "hij";
string foo = a + b + c + d + e + f; => string foo = string.Concat(a, b, c, d, e, f);