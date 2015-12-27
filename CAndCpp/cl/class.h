#ifndef __CLASS__
#define __CLASS__


class shape
{
    public:
        virtual void draw();
        void paint();
};

class square : public shape
{
    public:
        void draw();
        void paint();
};

class circle : public shape
{
    public:
    void draw();
    void paint();
};


#endif
