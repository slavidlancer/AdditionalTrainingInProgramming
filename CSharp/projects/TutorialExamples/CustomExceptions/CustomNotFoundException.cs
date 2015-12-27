using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustomExceptions
{
    public class CustomNotFoundException:Exception
    {
        public CustomNotFoundException()
        {

        }


        public CustomNotFoundException(string message)
            :base(message)
        {

        }


        public CustomNotFoundException(string message, Exception inner)
            :base(message, inner)
        {

        }
    }
}
