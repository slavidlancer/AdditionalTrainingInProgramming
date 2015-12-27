#include <stdio.h>

#include "lib.h"


#define LIMIT 999   //int
#define PI 3.14159  //double
#define NAME "Name" //string (char[])
#define VAR1 'Y'    //int
#define VAR2 7L //long int
#define VAR3 77U    //unsigned int
#define VAR4 77UL   //unsigned long int
#define VAR5 0.03F   //float
#define VAR6 0.003L   //long double
#define VAR7 1.0 //double
#define VAR8 0.5e-2  //double
#define VAR9 0xA32C //hexadecimal (41772)
#define VAR10 017 //octal (15)
#define VAR11 10100101b //binary (165)


double minimum (double x1, double y1)
{
    if (x1 < y1)
    {
        printf ("x < y\n");
    }
    else if (y1 < x1)
    {
        printf ("y < x\n");
    }
    else
    {
        printf ("error\n");
    }
}

void check (int a, int b, int *c)
{
    if (a > b)
    {
        *c = b;
    }
    else if (a < b)
    {
        *c = a;
    }
    else
    {
        *c = 0;
    }
}


int main()
/*
int main (int argc, char *argv[]);
(char *env[]);
argc - number of arguments;
argv - arguments (program name, other arguments);
e.g. argv -> prog_name arg1 arg2;
argc -> 3;
env - environment variables;
 */
{
    short int a;
    unsigned short int b;
    char c;
    char c2[50];
    unsigned char d;
    signed char e;
    int f;
    unsigned int g;
    long int h;
    unsigned long int i;
    float j;
    double k;
    long double l;

    double *pointer = &k;

    int m[5] = {1, 2, 3, 4, 5};
    int n;
    char string[] = "hello";
    char string2[] = {'h', 'i', '\0'};
    double x2[3][2] = { {1, 2}, {1, 2}, {1, 2} };

    sizeof (long int);
    sizeof (int);
    sizeof (short int);

    float x;
    x = (float) f;
    int y;
    y = (int) j;

    printf ("%f : %d\n", x, y);

    f = k++ + l;
    f = k + ++l;
    f = k++ + ++l;

    printf ("Hello\tworld!\'\"\?\\\n %c: %d : %f : %s\n", c, f, k, NAME);

//    scanf ("%s", &c2);

//    puts (c2);

//    f = getchar();

//    putchar (f);

/*
    && :: AND
    || :: OR
    ! :: NOT
*/

    if (f >= 0)
    {
        printf ("word\n");
    }
    else
    {
        printf ("draw\n");
    }

    func();

    scanf ("%u", &g);

    switch (g)
    {
        case 0:
        {
            printf ("0\n");

            break;
        }

        case 1:
        {
            printf ("1\n");

            break;
        }

        case -1:
        {
            printf ("-1\n");

            break;
        }

        default:
        {
            printf ("default\n");

            break;
        }
    }

    for (n = 0; n <= 0; n++)
    {
        printf ("%d\n", n);
    }

    i = 1;

    while (i--)
    {
        printf ("%Lu\n", i);
    }

    a = 5;

    do
    {
        printf ("%Lu\n", i);

        --a;
    }
    while (a > 0);

    minimum (PI, VAR7);

    check (2, 1, &n);

    printf ("%d\n", n);

    printf ("%d\n", t);

    init();

    *p++;

    printf ("%d\n", t);

    printf ("%.2f\n", k);

    *pointer = 1;

    printf ("%.2f\n", k);

    printf ("%d\n", 7/9*9);

    file_manage();

    return 0;
}
