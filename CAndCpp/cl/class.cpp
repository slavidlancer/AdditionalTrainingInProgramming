#include <iostream>

#include "class.h"


using namespace std;


virtual void shape :: draw()
{
    cout << "draw shape" << endl;
}

void shape :: paint()
{
    cout << "paint shape" << endl;
}

void square :: draw()
{
    cout << "draw square" << endl;
}

void shape :: paint()
{
    cout << "paint square" << endl;
}

void circle :: draw()
{
    cout << "draw circle" << endl;
}

void circle :: paint()
{
    cout << "paint circle" << endl;
}
