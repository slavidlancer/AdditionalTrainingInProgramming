public class Dog
{
	private string name;

	public Dog()
		: this(null, "default")
	{
	}

	public Dog(string name, string breed)
	{
		this.Name = name;
		this.Breed = breed;
	}

	public string Breed { get; set; }

	public void Bark()
	{
		System.Console.WriteLine("{0}", this.Name ?? "unknown name");
	}
}


Dog dog = new Dog();

dog.name = "name";

string.isnullorwhitespace - check


this.GetType().Name = class name


        public Westeros()
        {
            this.Cities = new List<ICity>();
            this.Houses = new List<IHouse>();
            this.CityNeighborsAndDistances = new Dictionary<ICity, Dictionary<ICity, double>>();
        }

        public Dictionary<ICity, Dictionary<ICity, double>> CityNeighborsAndDistances { get; private set; }

        protected IList<ICity> Cities { get; private set; }

        protected IList<IHouse> Houses { get; private set; }


public class Product {}

public override Product ProduceProduct()
{
	return new Product();
}
