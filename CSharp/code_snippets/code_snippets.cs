public virtual int Damage
+        {
+            get
+            {
+                return this.damage;
+            }
+
+            private set
+            {
+                if (value < 0)
+                {
+                    value = 0;
+                }
+
+                this.damage = value;
+            }
+        }


public virtual int Armor { get; private set; }

public Position Position
+        {
+            get
+            {
+                return this.position;
+            }
+
+            set
+            {
+                bool isXPosInRange = 0 <= value.X && value.X < Constants.MapWidth;
+                bool isYPosInRange = 0 <= value.X && value.X < Constants.MapHeight;
+
+                if (!isXPosInRange || !isYPosInRange)
+                {
+                    throw new LocationOutOfRangeException();
+                }
+
+                this.position = value;
+            }
+        }

public class Ork : Character
+    {
+        public const int DefaultOrkHitPoints = 90;
+        public const int DefaultOrkDamage = 25;
+        public const int DefaultOrkArmor = 10;
+
+        public Ork(Position position)
+            : base(position, DefaultOrkDamage, DefaultOrkHitPoints, DefaultOrkArmor)
+        {
+        }
+    }

private readonly IList<ICollectible> inventory;

public override int Armor
+        {
+            get
+            {
+                int armor = this.Inventory.Where(a => a is Armor).Cast<Armor>().Select(a => a.HitPoints).Max();
+
+                return armor;
+            }
+        }
+
+        public override int HitPoints
+        {
+            set
+            {
+                if (value > DefaultPlayerHitPoints)
+                {
+                    value = DefaultPlayerHitPoints;
+                }
+
+                base.HitPoints = value;
+            }
+        }
+
+        public IEnumerable<ICollectible> Inventory
+        {
+            get
+            {
+                return this.inventory;
+            }
+        }

public void AddItemToInventory(ICollectible item)
+        {
+            this.inventory.Add(item);
+        }

private readonly IList<IGameObject> entities;
+        private readonly IRenderer renderer;
+        private readonly IInputHandler inputHandler;
+        private readonly IPlayer player;

this.renderer.WriteLine(sb.ToString().Trim());
+
+        public static IList<IGameObject> PopulateMap()
+        {
+            IList<IGameObject> entities = new List<IGameObject>();
+
+            SeedEnemies(entities);
+            SeedItems(entities);
+
+            return entities;
+        }

public interface ICollect
+    {
+        IEnumerable<ICollectible> Inventory { get; }
+
+        void AddItemToInventory(ICollectible item);
+    }

public interface ICollectible : IGameObject
+    {
+        ItemState State { get; set; }
+    }

public struct Position
+    {
+        public Position(int x, int y)
+            : this()
+        {
+            this.X = x;
+            this.Y = y;
+        }
+
+        public int X { get; set; }
+
+        public int Y { get; set; }
+    }

public void Attack(ICharacter enemy)
+        {
+            enemy.Health -= this.Damage;
+        }

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

public bool IsRunning { get; private set; }

private void ExecuteCommand(string command)
+        {
+            switch (command)
+            {
+                case "help":
+                    this.ExecuteHelpCommand();
+                    break;
+                case "map":
+                    this.PrintMap();
+                    break;
+                case "left":
+                case "right":
+                case "up":
+                case "down":
+                    this.MovePlayer(command);
+                    break;
+                case "status":
+                    this.ShowStatus();
+                    break;
+                case "heal":
+                    this.player.Heal();
+                    this.renderer.WriteLine("Healed!");
+                    break;
+                case "clear":
+                    this.renderer.Clear();
+                    break;
+                case "exit":
+                    this.IsRunning = false;
+                    this.renderer.WriteLine("Bye, noob!");
+                    break;
+                default:
+                    throw new ArgumentException("Unknown command", "command");
+            }
+        }


sb.AppendLine();

Environment.NewLine

private void PopulateItems()
+        {
+            for (int i = 0; i < InitialNumberOfBeers; i++)
+            {
+                Item beer = this.CreateItem();
+                this.items.Add(beer);
+            }
+        }
+
+        private Item CreateItem()
+        {
+            /*int currentX = Rand.Next(1, MapWidth);
+            int currentY = Rand.Next(1, MapHeight);
+
+            bool containsEnemy = this.characters
+                .Any(e => e.Position.X == currentX && e.Position.Y == currentY);
+
+            bool containsBeer = this.items
+                .Any(e => e.Position.X == currentX && e.Position.Y == currentY);
+
+            while (containsEnemy || containsBeer)
+            {
+                currentX = Rand.Next(1, MapWidth);
+                currentY = Rand.Next(1, MapHeight);
+
+                containsEnemy = this.characters
+                .Any(e => e.Position.X == currentX && e.Position.Y == currentY);
+
+                containsBeer = this.items
+                .Any(e => e.Position.X == currentX && e.Position.Y == currentY);
+            }
+
+            int beerType = Rand.Next(0, 3);
+
+            BeerSize beerSize;
+
+            switch (beerType)
+            {
+                case 0:
+                    beerSize = BeerSize.Small;
+                    break;
+                case 1:
+                    beerSize = BeerSize.Medium;
+                    break;
+                case 2:
+                    beerSize = BeerSize.Large;
+                    break;
+                default:
+                    throw new ArgumentOutOfRangeException("beerType", "Invalid beer type.");
+            }*/
+
+            return new Beer(new Position(currentX, currentY), beerSize);
+        }

public class ObjectOutOfBoundsException : Exception
+    {
+        public ObjectOutOfBoundsException(string message)
+            : base(message)
+        {
+        }
+    }

throw new ObjectOutOfBoundsException("Specified coordinates are outside map.");

public enum BeerSize
+    {
+        Small = 50,
+        Medium = 75,
+        Large = 100
+    }

return (int)this.BeerSize;

output.AppendLine("<Log>");
