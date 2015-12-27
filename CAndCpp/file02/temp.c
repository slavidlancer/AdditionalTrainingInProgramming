#include <stdio.h>
#include <stdlib.h>
//#include <string.h>

#include "main.h"
#include "functions.h"


int main (int argc, char *argv[])
{
    int id = 0;
    int readid;
    char name[50];
    char readname[50];
    FILE *file_pointer;
    char *prog_name = argv[0];
    char *file_name = argv[1];

    if (argc == 1)
    {
        print_error (prog_name);
    }
    else if (argc == 2)
    {
        file_pointer = fopen (file_name, "w");

        if (file_pointer == NULL)
        {
            print_error_file (prog_name);
        }
        else
        {
            while (id < 5)
            {
                write_file (&id, name, file_pointer);
            }

            fclose (file_pointer);

/*            if (id == 5)
            {
                file_pointer = fopen (file_name, "r");

                if (file_pointer == NULL)
                {
                    print_error_file (prog_name);
                }
                else
                {
                    read_file (&readid, readname, file_pointer);

                    fclose (file_pointer);
                }
            }
            else
            {
                print_e (prog_name);
            }*/
        }
    }

    return 0;
}
