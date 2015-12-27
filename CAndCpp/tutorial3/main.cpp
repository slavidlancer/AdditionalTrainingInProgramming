#include <iostream>
#include <string>

#include "file.h"


#define SIZE 15


using namespace std;


template <class type_cl>
type_cl get_max (type_cl a, type_cl b)
{
    type_cl res;

    res = (a > b) ? a : b;

    return (res);
}

struct product
{
    int weight;
    float price;
} melon;

product apple, banana;

union types
{
    char x1;
    int x2;
    float x3;
    product fruit;
} first;

types second;


class rectangle
{
    int x, y;   //private

    public:
        rectangle();
        rectangle (int, int);
        ~rectangle();

        int area();
        friend rectangle dup (rectangle);
};

rectangle::rectangle()
{
//    x = new int;
//    y = new int;

    x = 5;
    y = 15;
}

rectangle::rectangle (int a, int b)
{
//    x = new int;
//    y = new int;

    x = a;
    y = b;
}

rectangle::~rectangle()
{
//    delete x;
//    delete y;
}

int rectangle::area()
{
    return (x * y);
}

rectangle dup (rectangle param)
{
    rectangle rectres;

    rectres.x = param.x * 2;
    rectres.y = param.y * 2;

    return (rectres);
}

class vector
{
    public:
        int x0, y0;

        vector()
        {
            //constructor
        };
        ~vector()
        {
            //destructor
        };

        vector (int, int);
        vector operator + (vector);
};

vector::vector (int a0, int b0)
{
    x0 = a0;
    y0 = b0;
}

vector vector::operator + (vector param)
{
    vector tm;

    tm.x0 = x0 + param.x0;
    tm.y0 = y0 + param.y0;

    return (tm);
}

class dm
{
    public:
        int isitme (dm &param);
};

int dm::isitme (dm &param)
{
    if (&param == this)
    {
        return true;
    }
    else
    {
        return false;
    }
}

class polygon
{
        protected:
            int w, h;

        public:
            static int sn;

            polygon();
            ~polygon();

            void set_v (int, int);
};

int polygon::sn = 0;

polygon::polygon()
{
    sn++;
}

polygon::~polygon()
{
    sn--;
}

void polygon::set_v (int a, int b)
{
    w = a;
    h = b;
}

class crect : public polygon    //, public class_name
{
    public:
        int ar();
};

int crect::ar()
{
    return (w * h);
}

class ctriang : public polygon
{
        public:
            int ar();
};

int ctriang::ar()
{
    return ((w * h) / 2);
}


void printarr (int arr[], int l)
{
    int n;

    for (n = 0; n < l; n++)
    {
        cout << arr[n] << "\t";
    }

    cout << endl;
}

void func (int q, float &p)
{
    p = ++q;
}

float calc (int q, float &p)
{
    p *= q;
}

int calc (float q, float &p)
{
    p *= q;
}

int main()
{
    int i = 0;
    int n (5);
    int a[SIZE] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14};
    float x = 20.50;
    float y = 5.05;
    string h = "hello";
    string str;
    char name[15];
    char *name2 = "string";

    rectangle object_rect (3, 14);
    rectangle object_pnt;
    rectangle object_cpy;

    object_cpy = dup (object_rect);

    cout << "area is: " << object_rect.area() << endl;
    cout << "area is: " << object_cpy.area() << endl;
    cout << "area is: " << object_pnt.area() << endl;

    crect rect_cl;
    ctriang triang_cl;

    rect_cl.set_v (1, 2);
    triang_cl.set_v (2, 5);

    cout << "rectangle area is: " << rect_cl.ar() << endl;
    cout << "triangle area is: " << triang_cl.ar() << endl;
    cout << "static sn = " << polygon::sn << endl;

    cout << "get_max(2.50,1.50) = " << get_max <double> (2.50, 1.50) << endl;
    cout << "get_max(2,1) = " << get_max <int> (2, 1) << endl;

#line 147 "vector a"

    vector v_a (3, 1);
    vector v_b (1, 2);
    vector v_c;

    v_c = v_a + v_b;

    cout << v_c.x0 << "\t" << v_c.y0 << endl;

    dm ndm;
    dm *ndm2 = &ndm;

    if (ndm2 -> isitme (ndm))
    {
        cout << "yes, &ndm is ndm2" << endl;
    }

    file_manage();

    for (i = 0; i <= (sizeof (name2) + 1); i++)
    {
        cout << *(name2+i) << " ";
    }

    cout << endl;

    cin >> name;

//    strcpy (str, h);
    str = h;

    cout << str << endl;
    cout << "Hello world!\t" << h << "\t" << 7/9*9 << endl;

    getline (cin, str);

    cout << str << endl;

    for (i = 0, n = 50; i != n; i++, n--)
    {
        if (n == 50)
        {
            continue;
        }

        cout << i << "\t" << n << endl;
    }

    i -= 2;

    func (i, x);

    cout << endl << i << "\t" << x << endl;

    calc (i, x);

    cout << endl << i << "\t" << x << endl;

    calc (x, y);

    cout << endl << x << "\t" << y << endl;

    printarr (a, SIZE);

    apple.weight = 2;

    cout << name << "\t" << apple.weight << endl;

    first.fruit.weight = 9;

    cout << first.fruit.weight << endl;

    cout << "static sn = " << polygon::sn << endl;

    return 0;
}
