using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SymbolicString
{
    class SymbolicStrings
    {
        static void Main(string[] args)
        {
            string message = "Stand up, stand up, Balkan superman.";
            char character = message[4];
            //greeting[4] = 'a'; //compilation error
            //character = greeting[50]; //indexoutofrangeexception
            string assigned = message;
            string newMessage = "Now, " + message;

            System.Console.WriteLine("message = \"{0}\", length = {1}, character = \"{2}\", assigned = \"{3}\"", message, message.Length, character, assigned);

            for (int index = 0; index < message.Length; index++)
            {
                System.Console.WriteLine("message[{0}] = {1}", index, message[index]);
            }

            System.Console.WriteLine(newMessage);
            System.Console.Write("Enter name: ");
            string name = System.Console.ReadLine();
            System.Console.WriteLine("entered name: " + name);


            string firstWord = "C#";
            string secondWord = "c#";

            System.Console.WriteLine(firstWord.Equals("C#"));
            System.Console.WriteLine(secondWord.Equals(firstWord));
            System.Console.WriteLine(firstWord == "C#");
            System.Console.WriteLine(firstWord == secondWord);
            System.Console.WriteLine(firstWord.Equals(secondWord, System.StringComparison.CurrentCultureIgnoreCase));


            string score = "sCore";
            string scary = "scary";

            System.Console.WriteLine(score.CompareTo(scary));
            System.Console.WriteLine(scary.CompareTo(score));
            System.Console.WriteLine(scary.CompareTo(scary));


            string alpha = "alpha";
            string firstScore = "sCorE";
            string secondScore = "score";

            System.Console.WriteLine(System.String.Compare(alpha, firstScore, false));
            System.Console.WriteLine(System.String.Compare(firstScore, secondScore, false));
            System.Console.WriteLine(System.String.Compare(firstScore, secondScore, true));
            System.Console.WriteLine(System.String.Compare(firstScore, secondScore, System.StringComparison.CurrentCultureIgnoreCase));


            string hello = "Hello";
            string helloCopy = hello;
            string same = "Hello";

            System.Console.WriteLine(hello == helloCopy);
            System.Console.WriteLine(System.Object.ReferenceEquals(hello, same));

            string hel = "Hel";
            string secondHelloCopy = hel + "lo";

            System.Console.WriteLine(hello == secondHelloCopy);


            string declared = "intern pool";
            string built = new StringBuilder("intern pool").ToString();
            string interned = System.String.Intern(built);

            System.Console.WriteLine(System.Object.ReferenceEquals(declared, built));
            System.Console.WriteLine(System.Object.ReferenceEquals(declared, interned));


            string greet = "Hello, ";
            string result = System.String.Concat(greet, name);

            System.Console.WriteLine(result);

            string secondResult = greet + name;

            System.Console.WriteLine(secondResult);

            secondResult += "!";
            System.Console.WriteLine(secondResult);


            int beastNumber = 666;
            string thirdResult = name + ":\n" + beastNumber + ".";

            System.Console.WriteLine(thirdResult);


            string mixedLetters = "aLl kInD of letTeRS";

            System.Console.WriteLine(mixedLetters.ToLower());
            System.Console.WriteLine(mixedLetters.ToUpper() == "ALL KIND OF LETTERS");


            string book = "Introduction to C# book";
            int indexBook = book.IndexOf("C#");

            System.Console.WriteLine(indexBook);


            string course = "C# Programming Course";

            int indexCourse = course.IndexOf("C#");
            System.Console.WriteLine(indexCourse);
            indexCourse = course.IndexOf("Course");
            System.Console.WriteLine(indexCourse);
            indexCourse = course.IndexOf("COURSE");
            System.Console.WriteLine(indexCourse);
            indexCourse = course.IndexOf("ram");
            System.Console.WriteLine(indexCourse);
            indexCourse = course.IndexOf("r");
            System.Console.WriteLine(indexCourse);
            indexCourse = course.IndexOf("r", 5);
            System.Console.WriteLine(indexCourse);
            indexCourse = course.IndexOf("r", 10);
            System.Console.WriteLine(indexCourse);


            string quote = "The main intent of the \"Intro to C#\" book is to " + "introduce the C# programming to newbies.";
            string keyword = "C#";
            int indexQuote = quote.IndexOf(keyword);

            while (indexQuote != -1)
            {
                System.Console.WriteLine("{0} found at index {1}", keyword, indexQuote);

                indexQuote = quote.IndexOf(keyword, indexQuote + 1);
            }


            string path = "C:\\Pics\\Rila2010.jpg";
            string fileName = path.Substring(8, 8);
            int indexPath = path.LastIndexOf("\\");
            string fullName = path.Substring(indexPath + 1);

            System.Console.WriteLine(fileName + " " + fullName);


            string listOfBeers = "Amstel, Zagorka, Becks, Tuborg";
            char[] separators = new char[] {' ', ',', '.'};
            string[] beersArray = listOfBeers.Split(separators);

            foreach (string item in beersArray)
            {
                System.Console.WriteLine(item);
            }

            string[] newBeersArray = listOfBeers.Split(separators, StringSplitOptions.RemoveEmptyEntries);

            foreach (string item in newBeersArray)
            {
                System.Console.WriteLine(item);
            }


            string doc = "hello, mail@domain.com     , \nthis service at mail@domain.com: 0888445566 \n0899837742   \n   0899088334    ";
            string fixedDoc = doc.Replace("mail@domain.com", "user@mail.com");
            string replacedDoc = System.Text.RegularExpressions.Regex.Replace(doc, "(08)[0-9]{8}", "$1********");
            string trimmedDoc = doc.Trim();
            string fileData = "    \n\n  0$%1 i Y i #@S   \n     ";
            string fileDataCopy = "      0$%1 i Y i #@S        ";
            string reduced = fileData.Trim();
            char[] trimChars = new char[] {' ', '0', '$', '%', '1', '@', '#', 'S'};
            string reducedWithChars = fileDataCopy.Trim(trimChars);
            string reducedInTheEnd = fileDataCopy.TrimEnd(trimChars);

            System.Console.WriteLine(fixedDoc);
            System.Console.WriteLine(replacedDoc);
            System.Console.WriteLine(trimmedDoc);
            System.Console.Write(trimmedDoc + doc + "\n");
            System.Console.WriteLine(reduced);
            System.Console.WriteLine(reducedWithChars);
            System.Console.WriteLine(reducedInTheEnd);


            string collector = "Numbers: ";

            System.Console.WriteLine(System.DateTime.Now);

            for (int index = 1; index <= 3000; index++) //35000
            {
                collector += index;
            }

            System.Console.WriteLine(collector.Substring(0, 1024));
            System.Console.WriteLine(System.DateTime.Now);
            //System.Console.WriteLine(collector);

            System.Console.WriteLine(System.DateTime.Now);

            StringBuilder stringBuilded = new StringBuilder();
            stringBuilded.Append("Numbers: ");

            for (int index = 1; index <= 35000; index++)
            {
                stringBuilded.Append(index);
            }

            System.Console.WriteLine(stringBuilded.ToString().Substring(0, 1024));
            System.Console.WriteLine(System.DateTime.Now);


            string text = "EM edit";
            string reversed = ReverseText(text);

            System.Console.WriteLine(reversed);


            StringBuilder stringBuildedNew = new StringBuilder(15);
            stringBuildedNew.Append("hello, C#");


            System.Console.WriteLine(ExtractCapitals(listOfBeers));


            DateTime currentDate = System.DateTime.Now;

            System.Console.WriteLine(currentDate);

            DateTime currentDateNew = System.DateTime.Now;

            System.Console.WriteLine(currentDateNew.ToString());


            System.Console.WriteLine("this is a template {0}", "here");


            string formattedText = System.String.Format("{0}: {1} is at \"{2}\" company, {3:dd.MM.yyyy}.", stringBuildedNew, name, text, currentDate);

            System.Console.WriteLine(formattedText);


            string textNumber = "50";
            int intValue = System.Int32.Parse(textNumber);

            System.Console.WriteLine(intValue + 3);

            string textBool = "TRue";
            bool boolValue = System.Boolean.Parse(textBool);

            if (boolValue)
            {
                System.Console.WriteLine("true value");
            }


            string textDate = "12.07.2015";
            string format = "dd.MM.yyyy";
            DateTime parsedDate = DateTime.Parse(textDate);
            DateTime parsedDateNew = DateTime.ParseExact(textDate, format, System.Globalization.CultureInfo.InvariantCulture);

            System.Console.WriteLine(parsedDate);
            System.Console.WriteLine("Day: {0}\nMonth: {1}\nYear: {2}", parsedDateNew.Day, parsedDateNew.Month, parsedDateNew.Year);
        }


        public static string ReverseText(string text)
        {
            StringBuilder stringBuilded = new StringBuilder();

            for (int index = text.Length - 1; index >= 0; index--)
            {
                stringBuilded.Append(text[index]);
            }

            return stringBuilded.ToString();
        }


        public static string ExtractCapitals(string text)
        {
            StringBuilder result = new StringBuilder();

            for (int index = 0; index < text.Length; index++)
            {
                char character = text[index];

                if (System.Char.IsUpper(character))
                {
                    result.Append(character);
                }
            }

            return result.ToString();
        }
    }
}
