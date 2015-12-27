using DAREintegraTiOn.Interfaces;
using System.Collections.Generic;
using System.Text;

namespace DAREintegraTiOn.Models.Objects
{
    public class Planet : StarObject, IPlanet
    {
        private bool hasRings;
	    private bool isAMoon;
	    private bool hasMoonOrMoons;
	    private bool isAStar;
	    private bool isAnAsteroid;
        private readonly IDictionary<string, IList<string>> meanings;
        private readonly IList<IHuman> humans;
        private readonly IList<IAnimal> animals;
        private readonly IList<IPlant> plants;
        private readonly IList<IMineral> minerals;

        public Planet(string name, int age, ColorType color, SizesMeasures sizes,
            byte personalNumber, char symbol, bool isReal, int energyCapacity, bool hasRings, bool isAMoon,
            bool hasMoonOrMoons, bool isAStar, bool isAnAsteroid)
            : base(name, age, color, sizes, personalNumber, symbol, isReal, energyCapacity)
        {
            this.HasRings = hasRings;
            this.IsAMoon = isAMoon;
            this.HasMoonOrMoons = hasMoonOrMoons;
            this.IsAStar = isAStar;
            this.IsAnAsteroid = isAnAsteroid;
            this.meanings = new Dictionary<string, IList<string>>();
            this.humans = new List<IHuman>();
            this.animals = new List<IAnimal>();
            this.plants= new List<IPlant>();
            this.minerals = new List<IMineral>();
        }

        public bool HasRings
        {
            get
            {
                return this.hasRings;
            }

            set //private
            {
                this.hasRings = value;
            }
        }

        public bool IsAMoon
        {
            get
            {
                return this.isAMoon;
            }

            set //private
            {
                this.isAMoon = value;
            }
        }

        public bool HasMoonOrMoons
        {
            get
            {
                return this.hasMoonOrMoons;
            }

            set //private
            {
                this.hasMoonOrMoons = value;
            }
        }

        public bool IsAStar
        {
            get
            {
                return this.isAStar;
            }

            set //private
            {
                this.isAStar = value;
            }
        }

        public bool IsAnAsteroid
        {
            get
            {
                return this.isAnAsteroid;
            }

            set //private
            {
                this.isAnAsteroid = value;
            }
        }

	    public override string ToString()
	    {
            var planetAllInfo = new StringBuilder();

            /*var output = new StringBuilder();
            output.AppendFormat(">{0} - {1} at ({2},{3}){4}",
                this.Name, this.GetType().Name, this.X, this.Y, Environment.NewLine);
			output.Append("text");

			return output.ToString();*/

            return planetAllInfo.ToString();
	    }
    }
}
