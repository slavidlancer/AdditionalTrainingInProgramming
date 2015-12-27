#include <iostream>
#include <fstream>


void file_manage()
{
    char ch;
    ofstream file_wr;
    ifstream file_op;

    file_wr.open ("example", ios::out);
    if (file_wr.is_open())
    {
        myfile << "hello\n";
        file_wr.close();
    }
    else
    {
        cout << "unable to open file" << endl;
    }

    file_op.open ("example", ios::in);
    if (file_op.is_open())
    {
        while (! (file_op.eof()))
        {
            getline (file_op, ch);

            cout << ch << endl;
        }

        file_op.close();
    }
    else
    {
        cout << "unable to open file" << endl;
    }
}
