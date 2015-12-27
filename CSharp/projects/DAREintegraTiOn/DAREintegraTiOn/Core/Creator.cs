using DAREintegraTiOn.Interfaces;
using DAREintegraTiOn.Interfaces.Core;
using DAREintegraTiOn.Interfaces.Core.Laws;
using System.Collections.Generic;

namespace DAREintegraTiOn.Core
{
    public abstract class Creator : ICreator
    {
        private string mentalIdea;
        private string mentalMeaning;

        protected Creator(string mentalIdea = null, string mentalMeaning = null)
        {
            this.MentalIdea = mentalIdea;
            this.MentalMeaning = mentalMeaning;
        }

        public virtual string MentalIdea
        {
            get
            {
                return this.mentalIdea;
            }

            set
            {
                this.mentalIdea = value;
            }
        }

        public virtual string MentalMeaning
        {
            get
            {
                return this.mentalMeaning;
            }

            set
            {
                this.mentalMeaning = value;
            }
        }


	    public abstract class System : ISystem
        {
            private readonly IList<ISimpleLaw> simpleLaws;
            private readonly IList<IMinorLaw> minorLaws;

            protected System()
        	{
                this.simpleLaws = new List<ISimpleLaw>();
                this.minorLaws = new List<IMinorLaw>();
        	}

            public virtual IList<ISimpleLaw> SimpleLaws
            {
                get
                {
                    return this.simpleLaws;
                }
            }

            public virtual IList<IMinorLaw> MinorLaws
            {
                get
                {
                    return this.minorLaws;
                }
            }

            public virtual void AddSimpleLaw(ISimpleLaw simpleLaw)
            {
                this.simpleLaws.Add(simpleLaw);
            }

            public virtual void AddMinorLaw(IMinorLaw minorLaw)
            {
                this.minorLaws.Add(minorLaw);
            }
   	    }
    }
}
