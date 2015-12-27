using DAREintegraTiOn.Interfaces.Engine;

namespace DAREintegraTiOn.Core.Engine
{
    public sealed class EngineLoveUnderWill : IEngine
    {
        private static readonly EngineLoveUnderWill SingleInstance = new EngineLoveUnderWill();

        private EngineLoveUnderWill()
        {
            /*this.factory = new CosmeticsFactory();
            this.shoppingCart = new ShoppingCart();
            this.categories = new Dictionary<string, ICategory>();
            this.products = new Dictionary<string, IProduct>();*/
        }

        public static EngineLoveUnderWill Instance
        {
            get
            {
                return SingleInstance;
            }
        }

        public void Start() //EngineLoveUnderWill.Instance.Start();
        {
            /*var commands = this.ReadCommands();
            var commandResult = this.ProcessCommands(commands);
            this.PrintReports(commandResult);*/
        }
    }
}
