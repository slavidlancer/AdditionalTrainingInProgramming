#include <string.h>


int t = 0;
int *p;


void init()
{
    p = &t;
}

void func()
{
    int x3[3];
    int *px;
    int *y3;

    x3[0] = 0;
    x3[1] = 1;
    x3[2] = 2;

    px = &(x3[0]);
    px = x3;    //px -> x3[0]
    px++;   //px -> x3[1]

    y3 = malloc (3 * sizeof (int));

    y3[0] = 0;
    y3[1] = 1;
    y3[2] = 2;

    printf ("%d : %d : %d\n", y3[0], y3[1], y3[2]);

    string2();

    free (y3);

    y3 = NULL;
}

void string2()
{
    char str1[6] = "hello";
    char *str2 = malloc (6);
    char *str3 = malloc(sizeof (str1) + 1);

    strcpy (str3, str1);

/*
a, b - strings;
c - char;
char *gets (a) - read from std;
int puts (a) - print to std;
char *strcat (a, b) - append b onto a, return a;
int strlen (a) - return length of a;
char *strchr (a, c) - return pointer to first occurence of c in a;
char *strrchr (a, c) - return pointer to last occurence of c in a;
int strcmp (a, b) - compare a and b (< 0 / > 0 / 0);
*/

    printf ("%s : %s\n", str1, str3);

    free (str2);

    str2 = NULL;

    free (str3);

    str3 = NULL;
}
