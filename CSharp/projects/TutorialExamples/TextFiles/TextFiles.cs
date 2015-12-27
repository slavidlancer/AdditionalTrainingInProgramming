using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace TextFiles
{
    class TextFiles
    {
        const double COEFFICIENT = 1.05;
        const int ADDITION = 5000;
        const string INPUT_FILE = @"..\..\Resources\source.sub";
        const string OUTPUT_FILE = @"..\..\Resources\fixed.sub";

        static void Main(string[] args)
        {
            // Create a StreamReader connected to a file
            //StreamReader reader = new StreamReader("test.txt");
            //string fileName = "C:\\Temp\\work\\test.txt";
            //string theSameFileName = @"C:\Temp\work\test.txt";

            /*string otherFileName = @"..\..\Resources\sample.txt";*/

            //C:\Users\win7\documents\visual studio 2013\Projects\TutorialExamples\TextFiles\Resources\source.sub
            //StreamReader reader = new StreamReader(fileName);

            /*StreamReader reader = new StreamReader(otherFileName, Encoding.GetEncoding("Windows-1251")); //GetEncoding("UTF-8")*/


            /*// Read file here...
            int lineNumber = 0;
            // Read first line from the text file
            string line = reader.ReadLine();

            // Read the other lines from the text file
            while (line != null)
            {
                lineNumber++;

                System.Console.WriteLine("Line {0}: {1}", lineNumber, line);

                line = reader.ReadLine();
            }

            // Close the reader resource after you've finished using it
            reader.Close();*/


            /*using (reader)
            {
                int lineNumber = 0;
                // Read first line from the text file
                string line = reader.ReadLine();

                // Read the other lines from the text file
                while (line != null)
                {
                    lineNumber++;

                    System.Console.WriteLine("Line {0}: {1}", lineNumber, line);

                    line = reader.ReadLine();
                }
            }*/


            /*//StreamWriter writer = new StreamWriter(@"..\..\Resources\test.txt");

            StreamWriter writer = new StreamWriter(@"..\..\Resources\test.txt", false, Encoding.GetEncoding("Windows-1251"));

            using (writer)
            {
            // Loop through the numbers from 1 to 20 and write them
                for (int i = 1; i <= 20; i++)
                {
                    writer.WriteLine(i);
                }
            }*/


            /*//string fileName = @"somedir\somefile.txt";

            try
            {
                StreamReader readerTC = new StreamReader(otherFileName);

                System.Console.WriteLine("File {0} successfully opened.", otherFileName);
                System.Console.WriteLine("File contents:");

                using (readerTC)
                {
                    Console.WriteLine(readerTC.ReadToEnd());
                }
            }
            catch (FileNotFoundException)
            {
                System.Console.Error.WriteLine("Can not find file {0}.", otherFileName);
            }
            catch (DirectoryNotFoundException)
            {
                System.Console.Error.WriteLine("Invalid directory in the file path.");
            }
            catch (IOException)
            {
                System.Console.Error.WriteLine("Can not open the file {0}", otherFileName);
            }*/


            /*string fileNameFW = @"..\..\Resources\sample.txt";
            string word = "C#";

            try
            {
                StreamReader readerFW = new StreamReader(fileNameFW);

                using (readerFW)
                {
                    int occurrences = 0;
                    string line = readerFW.ReadLine();

                    while (line != null)
                    {
                        int index = line.IndexOf(word);

                        while (index != -1)
                        {
                            occurrences++;
                            index = line.IndexOf(word, (index + 1));
                        }

                        line = readerFW.ReadLine();
                    }

                    System.Console.WriteLine("The word {0} occurs {1} times.", word, occurrences);
                }
            }
            catch (FileNotFoundException)
            {
                System.Console.Error.WriteLine("Can not find file {0}.", fileNameFW);
            }
            catch (IOException)
            {
                System.Console.Error.WriteLine("Can not read the file {0}.", fileNameFW);
            }*/


            try
            {
                // Getting the Cyrillic encoding
                System.Text.Encoding encoding = System.Text.Encoding.GetEncoding(1251);

                // Create reader with the Cyrillic encoding
                StreamReader streamReader = new StreamReader(INPUT_FILE, encoding);

                // Create writer with the Cyrillic encoding
                StreamWriter streamWriter = new StreamWriter(OUTPUT_FILE, false, encoding);

                using (streamReader)
                {
                    using (streamWriter)
                    {
                        string line;

                        while ((line = streamReader.ReadLine()) != null)
                        {
                            streamWriter.WriteLine(FixLine(line));
                        }
                    }
                }
            }
            catch (IOException exc)
            {
                Console.WriteLine("Error: {0}.", exc.Message);
            }
        }

        public static string FixLine(string line)
        {
            // Find closing brace
            int bracketFromIndex = line.IndexOf('}');
            // Extract 'from' time
            string fromTime = line.Substring(1, bracketFromIndex - 1);
            // Calculate new 'from' time
            int newFromTime = (int)(Convert.ToInt32(fromTime) * COEFFICIENT + ADDITION);
            // Find the following closing brace
            int bracketToIndex = line.IndexOf('}', bracketFromIndex + 1);
            // Extract 'to' time
            string toTime = line.Substring(bracketFromIndex + 2, bracketToIndex - bracketFromIndex - 2);
            // Calculate new 'to' time
            int newToTime = (int)(Convert.ToInt32(toTime) * COEFFICIENT + ADDITION);
            // Create a new line using the new 'from' and 'to' times
            string fixedLine = "{" + newFromTime + "}" + "{" + newToTime + "}" + line.Substring(bracketToIndex + 1);

            return fixedLine;
        }
    }
}