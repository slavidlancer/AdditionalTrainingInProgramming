private readonly List<Item> inventory;
+ 
+        public Player(Position position, char objectSymbol, string name, PlayerRace race)
+            : base(position, objectSymbol, name, 0, 0)
+        {
+            this.Race = race;
+            this.inventory = new List<Item>();
+            this.SetPlayerStats();
+        }
+
+        public PlayerRace Race { get; private set; }
+
+        public IEnumerable<Item> Inventory
+        {
+            get
+            {
+                return this.inventory;
+            }
+        }

public void AddItemToInventory(Item item)
+        {
+            this.inventory.Add(item);
+        }

this.inventory.Remove(beer);


private readonly string[] characterNames =
+        {
+            "Alinar",
+            "Zandro",
+            "Llombaerth",
+            "Inchel",
+            "Aymer",
+            "Folre",
+            "Nyvorlas",
+            "Khuumal",
+            "Intevar",
+            "Nopos"
+        };

private static readonly Random Rand = new Random();

 int currentX = Rand.Next(1, MapWidth);
 int currentY = Rand.Next(1, MapHeight);

if (!char.IsUpper(value))
+                {
+                    throw new ArgumentOutOfRangeException(
+                        "objectSymbol", 
+                        "Object symbol must be an upper-case letter.");
+                }

void WriteLine(string message, params object[] parameters);

Console.Clear();


public Logger(params IAppender[] appenders)
+        {
+            this.Appenders = new List<IAppender>(appenders);
+        }

public List<IAppender> Appenders { get; set; }

foreach (var appender in this.Appenders)
+            {
+                appender.Append(msg, level, date);
+            }


public class Container<T> //cloning recommended
{
    private List<T> items = new List<T>();
    public IEnumerable<T> Items
    { 
        get { return this.items; }
    }
    public void AddItem (T item)
    {
        this.Items.Add(item);
    }
}


public class LocalCourse : Course, ILocalCourse
{
    public string Lab { get; set; }
    public override string ToString()
    {
        return base.ToString() + "; Lab=" + this.Lab + ")";
    }
}


public abstract class Creature

private readonly ICollection<Specialty> specialtiesList;

protected Creature()
{
	this.specialtiesList = new List<Specialty>();
}

public IEnumerable<Specialty> Specialties
        {
            get
            {
                return this.specialtiesList;
            }
        }

protected void AddSpecialty(Specialty specialtyToAdd)
        {
            this.specialtiesList.Add(specialtyToAdd);
        }


public class Angel : Creature

this.AddSpecialty(new Hate(typeof(Devil)));


protected virtual ICreaturesInBattle GetByIdentifier(CreatureIdentifier identifier)
        {
            if (identifier == null)
            {
                throw new ArgumentNullException("identifier");
            }
	
	    throw new ArgumentException(
                string.Format(CultureInfo.InvariantCulture, "Invalid ArmyNumber: {0}", identifier.ArmyNumber));
        }
