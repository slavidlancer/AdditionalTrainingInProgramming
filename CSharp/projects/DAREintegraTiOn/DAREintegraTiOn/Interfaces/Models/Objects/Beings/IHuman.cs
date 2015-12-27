using System;

namespace DAREintegraTiOn.Interfaces.Models.Objects.Beings
{
    public interface IHuman : IBeingObject
    {
        string SecondName { get; set; }

        string LastName { get; set; }

        DateTime BirthInfo { get; set; }

        string Email { get; set; }

        bool IsInitiated { get; set; }

        bool IsPractising { get; set; }

        bool IsGraduated { get; set; }
    }
}
