﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectsCreate
{
    public class Cat
    {
        private string name;
        private string color;

        public string Name
        {
            get
            {
                return this.name;
            }

            set
            {
                this.name = value;
            }
        }

        public string Color
        {
            get
            {
                return this.color;
            }

            set
            {
                this.color = value;
            }
        }

        public Cat()
        {
            this.name = "Unnamed";
            this.color = "gray";
        }

        public Cat(string name, string color)
        {
            this.name = name;
            this.color = color;
        }

        public void SayMiau()
        {
            System.Console.WriteLine("Cat {0} said: Miau!", name);
        }
    }
}
