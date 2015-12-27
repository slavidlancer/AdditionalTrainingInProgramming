#ifndef __CLASS__
#define __CLASS__

#include <iostream>
#include <string>


class string
{
    char *str;

    public:
        string()    //constructor
        {
            str = NULL;
        }

        string (const char *s)  //constructor with char argument
        {
//            str = new char[strlen (s) + 1];

//            strcpy (str, s);
        }

        string (const string &t)    //copy constructor, take reference to another string as the parameter
        {
//            str = new char[strlen (t.str) + 1];

//            strcpy (str, t.str);
        }

        ~string()   //destructor
        {
            delete [] str;
        }

        void print() const
        {
            cout << str;
        }
};


#endif
