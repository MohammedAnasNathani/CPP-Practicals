#include <iostream>
using namespace std;

class Rectangle
{
private:
    double length;
    double width;

public:
    // Constructor with parameters
    Rectangle(double l, double w)
    {
        length = l;
        width = w;
    }

    // Method to calculate area
    double area()
    {
        return length * width;
    }

    // Method to display dimensions
    void display()
    {
        cout << "Length: " << length << ", Width: " << width << endl;
    }
};

int main()
{
    // Creating an object of Rectangle
    Rectangle rect(5.0, 3.0);

    // Display dimensions and area
    rect.display();
    cout << "Area: " << rect.area() << endl;

    return 0;
}
