using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CustomExceptions;

namespace HandlingExceptions
{
    class HandlingExceptions
    {
        static void Main(string[] args)
        {
            try
            {
                string fileName = "wrong_file_name.txt";

                ReadFileSeventh(fileName);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Error ocurred!", ex);
            }


            /*try
            {
                string fileName = "wrong_file_name.txt";

                ReadFileEighth(fileName);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Error ocurred!", ex);
            }*/


            int number = 0;

            System.Console.Write("Enter number: ");

            try
            {
                string line = System.Console.ReadLine();
                number = System.Int32.Parse(line);
            }
            catch (Exception)
            {
                //incorrect numbers = 0
            }

            System.Console.WriteLine("The number is {0}.", number);


            //throw new CustomExceptions.CustomNotFoundException("The object is not found!");


            /*int index = 17;
            char character = 'c';

            throw new FormatException(string.Format("Invalid character at position {0}. " +
                "Number expected but character '{1}' was found.", index, character));*/


            /*try
            {
                string fileName = "wrong_file_name.txt";

                ReadFileSixth(fileName);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Error ocurred!", ex);
            }*/


            /*try
            {
                string fileName = "wrong_file_name.txt";

                ReadFileFifth(fileName);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Error ocurred!", ex);
            }*/


            /*try
            {
                string fileName = "wrong_file_name.txt";

                ReadFileFourth(fileName);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Error ocurred!", ex);
            }*/


            /*try
            {
                string fileName = "wrong_file_name.txt";

                ReadFileThird(fileName);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Error ocurred!", ex);
            }*/


            //throw new Exception("Exception!");


            /*string fileName = "wrong_file_name.txt";
            Exception e = new Exception("There was a problem!");

            ReadFile(fileName);

            throw e;*/
        }


        static void ReadFile(string fileName)
        {
            try
            {
                TextReader reader = new StreamReader(fileName);
                string line = reader.ReadLine();
                System.Console.WriteLine(line);
                reader.Close();
            }
            catch (FileNotFoundException fnfe)
            {
                System.Console.WriteLine("The file {0} is not found!", fileName);
            }
            catch (IOException ioe)
            {
                System.Console.WriteLine(ioe.StackTrace);
            }
        }


        static void ReadFileSecond(string fileName)
        {
            TextReader reader = new StreamReader(fileName);
            string line = reader.ReadLine();
            System.Console.WriteLine(line);
            reader.Close();
        }


        static void ReadFileThird(string fileName)
        {
            try
            {
                //throw new IOException("IOE!");

                TextReader reader = new StreamReader(fileName);
                string line = reader.ReadLine();
                System.Console.WriteLine(line);
                reader.Close();
            }
            catch (FileNotFoundException fnfe)
            {
                System.Console.WriteLine("The file {0} is not found!", fileName);
            }
        }


        static void ReadFileFourth(string fileName)
        {
            TextReader reader = null;

            try
            {
                reader = new StreamReader(fileName);
                string line = reader.ReadLine();
                System.Console.WriteLine(line);
            }
            finally
            {
                if (reader != null)
                {
                    //reader.Close();

                    reader.Dispose();
                }
            }
        }


        static void ReadFileFifth(string fileName)
        {
            using (StreamReader reader = new StreamReader(fileName))
            {
                string line = reader.ReadLine();
                System.Console.WriteLine(line);
            }
        }


        static void ReadFileSixth(string fileName)
        {
            TextReader reader = null;

            try
            {
                reader = new StreamReader(fileName);
                string line = reader.ReadLine();
                System.Console.WriteLine(line);
            }
            catch (FileNotFoundException fnfe)
            {
                System.Console.WriteLine("The file {0} is not found!", fileName);
            }
            catch (IOException ioe)
            {
                System.Console.WriteLine(ioe.StackTrace);
            }
            finally
            {
                reader.Close();
            }
        }


        static void ReadFileSeventh(string fileName)
        {
            if (!File.Exists(fileName))
            {
                System.Console.WriteLine("The file {0} is not found!", fileName);

                return;
            }

            StreamReader reader = new StreamReader(fileName);

            using (reader)
            {
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    System.Console.WriteLine(line);
                }
            }
        }


        static void ReadFileEighth(string fileName)
        {
            StreamReader reader = null;

            try
            {
                reader = new StreamReader(fileName);

                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    System.Console.WriteLine(line);
                }

                reader.Close();
            }
            catch (FileNotFoundException fnfe)
            {
                System.Console.WriteLine("The file {0} is not found!", fileName);
            }
            /*catch (IOException ioe)
            {
                System.Console.WriteLine(ioe.StackTrace);
            }*/
            finally
            {
                if (reader != null)
                {
                    reader.Close();
                }
            }
        }
    }
}
