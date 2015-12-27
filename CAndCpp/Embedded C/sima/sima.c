#define special_output_port (* ( (volatile char *) 0x20) )

#define special_input_port (* ( (volatile char *) 0x22) )

void debug_puts (const char *str)
{
    const char *c;

    for (c = str; *c; c++)
    {
        special_output_port = *c;
    }
}

int main (void)
{
    volatile char in_char;

    debug_puts ("\nPress any key and enter:\n >");

    in_char = special_input_port;

    debug_puts ("\nYou entered: ");

    do
    {
        special_output_port = in_char;
    }
    while ( (in_char = special_input_port) != '\n' );

    special_output_port = '\n';
    special_output_port = '\n';

    return 0;
}
