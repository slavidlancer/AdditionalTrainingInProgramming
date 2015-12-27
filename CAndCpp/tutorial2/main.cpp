#include <iostream>
//#include <string>

#include "class.h"


using namespace std;


/*class temp
{
    char *str;

    public:
        temp()    //constructor
        {
            str = NULL;
        }

        temp (const char *s)  //constructor with char argument
        {
            str = new char[strlen (s) + 1];

            strcpy (str, s);
        }

        temp (const temp &t)    //copy constructor, take reference to another string as the parameter
        {
            str = new char[strlen (t.str) + 1];

            strcpy (str, t.str);
        }

        ~temp()   //destructor
        {
            delete [] str;
        }

        void print() const
        {
            cout << str;
        }
};*/

void temp::print2() const
{
    cout << str << endl;
}

class derived : public temp
{
    int j;

}

void ch (int i, int &j)
{
    i++;
    j--;
}

char &strchr2 (char *str, char c)
{
    while (*str != '\0' && *str != c)
    {
        str++;
    }

    return *str;
}


int main()
{
    int num_chars = 4;
    int &nc = num_chars;
    int *pn = &num_chars;
    char *name;
    char s[] = "hello";

    string2 s1;
    string2 s2 ("hello");
    string2 (s2);

    s1.print();
    s2.print();
    s3.print();

    strchr2 (s, 'l') = 'L';

    cout << s << endl;

    *pn = 20;
    pn = new int;

    cin >> *pn;

    ch (num_chars, *pn);

    cout << pn << " : " << *pn << " : " << num_chars << " : " << nc << endl;

    name = new char[num_chars + 1];

    if (name != NULL)
    {
        name = "hi";

        cout << name << endl;

//        delete [] name;
    }

    cout << "Hello world!" << endl;

    return 0;
}
