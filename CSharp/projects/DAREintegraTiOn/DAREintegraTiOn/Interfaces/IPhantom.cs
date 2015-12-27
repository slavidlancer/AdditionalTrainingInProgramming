namespace DAREintegraTiOn.Interfaces
{
    public interface IPhantom : ITheAbsoluteInexplicitPrimeCause
    {
        string[] EnergyCenters { get; set; }

        double energyCapacity { get; set; }
    }
}
