System.Console.Write("Enter number: ");
short checkedNumber = Convert.ToShort(Console.ReadLine());

short check = checkedNumber % 2;
short checkThirdDigit = ((checkedNumber / 100) / 10) % 7;
byte checkedNumberBool = 9;
float aSide = 1.23f;
float bSide = 3f;
float heightTrap = 2.45f;
float litseTrap = ((aSide + bSide) / 2f) * heightTrap;


System.Console.WriteLine("The litse of the trap is: " + litseTrap);


System.Console.Write("Enter the weight of the human on the Earth: ");
double weightHuman = Convert.ToDouble(Console.ReadLine());

System.Console.WriteLine("The weight of the human on the Moon is: " + (weightHuman * 0.17)); 


System.Console.Write("Enter the longtitude of the rectangle: ");
ushort longtitudeRectangle = Convert.ToUshort(Console.ReadLine());

System.Console.Write("Enter the height of the rectangle: ");
ushort heightRectangle = Convert.ToUshort(Console.ReadLine());

System.Console.WriteLine("The plosht the rectangle is: {1}.\nThe perimeter of the rectangle is: {2}.", (longtitudeRectangle * heightRectangle), 2*(longtitudeRectangle + heightRectangle));


check == 0 ? "chetno" : "nechetno";


int checkFive = checkedNumber % 5;
bool checkFiveBool = (checkFive == 0) ? true : false;

int checkSeven = checkedNumber % 7;
bool checkSevenBool = (checkSeven == 0) ? true : false;

System.Console.Write("Divided by 5 and 7?");
System.Console.WriteLine(checkFiveBool && checkSevenBool ? "- yes" : "- no");


System.Console.Write("The third digit is 7?");
System.Console.WriteLine(checkThirdDigit == 7 ? "- yes" : "- no");


System.Console.WriteLine(8 & checkedNumberBool != 0 ? "- the third bit is 1" : "- the third bit is 0");