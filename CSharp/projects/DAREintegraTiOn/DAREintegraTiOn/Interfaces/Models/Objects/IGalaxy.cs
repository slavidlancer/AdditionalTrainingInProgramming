namespace DAREintegraTiOn.Interfaces.Models.Objects
{
    public interface IGalaxy : IWorld
    {
        string Name { get; set; } //{ get; }

        byte BlackHolesPercentage { get; set; }
    }
}
