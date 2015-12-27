#include <stdio.h>
#include <stdlib.h>
//#include <ctype.h>

#include "file.h"

#define DBG 0


int main (int argc, char *argv[])
{
#if DBG
    int c, nl;
    char *str = malloc (1);

    c = getchar();
    nl = 0;

    while (c != EOF)
    {
        putchar (c);
        c = getchar();
//        putchar (tolower (c));

        if (c == '\n')
        {
            nl++;

            printf ("\n\t%d", nl);
            sprintf (str, "\n\t%d", nl);
            printf ("\n%s\n", str);
        }
    }

    free (str);
    str = NULL;
#else
    int arg_c = argc;
    char *prog_name = argv[0];
    char *file_name = argv[1];
#endif

    return 0;
}
