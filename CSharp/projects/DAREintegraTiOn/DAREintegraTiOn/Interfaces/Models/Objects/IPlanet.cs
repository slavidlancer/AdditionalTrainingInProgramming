namespace DAREintegraTiOn.Interfaces.Models.Objects
{
    public interface IPlanet : IStarObject
    {
        bool HasRings { get; set; }

        bool IsAMoon { get; set; }

        bool HasMoonOrMoons { get; set; }

        bool IsAStar { get; set; }

        bool IsAnAsteroid { get; set; }
    }
}
