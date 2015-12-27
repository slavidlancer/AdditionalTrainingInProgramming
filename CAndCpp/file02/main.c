#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "main.h"


int main (int argc, char *argv[])
{
    int id = 0;
    int strl;
    char buff[BUFSIZ];
    char *name = malloc (BUFSIZ * sizeof (char));
    char *prog_name = argv[0];
    char *file_name = argv[1];
    FILE *file_pointer;
    size_t tsize = 0;


    if (argc == 1)
    {
        fprintf (stderr, "only program name \"%s\"\n", prog_name);
        exit (1);
    }
    else if (argc == 2)
    {
        file_pointer = fopen (file_name, "w");

        if (file_pointer == NULL)
        {
            fprintf (stderr, "cannot open file \"%s\" for writing\n", prog_name);
            exit (1);
        }
        else
        {
            while (id < 5)
            {
                printf ("name = ");

                getline (&name, &tsize, stdin);

                strl = strlen (name) - 1;

                if (name[strl] == '\n')
                {
                    name[strl] = '\0';
                }

                fprintf (file_pointer, "%d.%s\n", id, name);

                id++;
            }

            fclose (file_pointer);

            if (id == 5)
            {
                file_pointer = fopen (file_name, "r");

                if (file_pointer == NULL)
                {
                    fprintf (stderr, "cannot open file \"%s\" for reading\n", prog_name);
                    exit (1);
                }
                else
                {
                    printf ("\n");

                    while (fgets (buff, BUFSIZ, file_pointer) != NULL)
                    {
                        strl = strlen (buff) - 1;

                        if (buff[strl] == '\n')
                        {
                            buff[strl] = '\0';
                        }

                        printf ("%s\n", buff);
                    }

                    fclose (file_pointer);

                    free (name);
                    name = NULL;
                }
            }
            else
            {
                fprintf (stderr, "error writing to file %s\n", prog_name);
                exit (1);
            }
        }
    }

    return 0;
}
