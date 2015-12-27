#include <stdio.h>


#define SQ(x) ((x) * (x))
#define TF 1


typedef unsigned long int uli;
const int ZERO = 0;


void file_manage()
{
#if TF
    uli num = 1;
#else
    uli num = 0;
#endif
    char su[5] = "ime1";

    enum filenames
    {
        cbp,
        layout,
        depend
    } f1;

    struct struktura
    {
        int id;
        char name[5];
    } struktura_obekt1 = {ZERO, "ime1"}, struktura_obekt2 = {1, "ime2"}, struktura_obekt3 = {3, "ime3"};

    struct struktura struktura_obekt5;
    struct struktura *struktura_obekt4 = malloc (sizeof (struct struktura));

    struktura_obekt3.id = 2;
    (*struktura_obekt4).id = 4;
    struktura_obekt4 -> id = 3;

    struct
    {
        unsigned is_keyword : 1;
    } flags;

    union value
    {
        int intval;
        char *pval;
    } uvalue;

    uvalue.intval = ZERO;
    uvalue.pval = &uvalue.intval;

    union value intval = {1};
    union value pval = {&su};

    f1 = cbp;

    printf ("%d\n", f1);

    f1 = ++num;

    printf ("%d %d\n", f1, SQ(f1));

    flags.is_keyword ? printf ("keyword = 1\n") : printf ("keyword = 0\n");

    FILE *fl;

    fl = fopen ("tutorial.layout", "rb");

    if (fl == NULL)
    {
        fprintf (stderr, "unable to open file\n");

        return 1;
    }
    else
    {
        printf ("file opened\n");
    }

//    fscanf (fp, );

    fclose (fl);

    printf ("file closed\n");
}
