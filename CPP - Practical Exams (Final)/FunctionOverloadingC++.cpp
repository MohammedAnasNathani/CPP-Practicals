#include <iostream>
using namespace std;

// Function overloading in C++
class OverloadExample
{
public:
    // Overloaded function to add two integers
    int add(int a, int b)
    {
        return a + b;
    }

    // Overloaded function to add three integers
    int add(int a, int b, int c)
    {
        return a + b + c;
    }

    // Overloaded function to add two double values
    double add(double a, double b)
    {
        return a + b;
    }
};

int main()
{
    OverloadExample example;

    cout << "Sum of 2 and 3: " << example.add(2, 3) << endl;         // Calls the first overload
    cout << "Sum of 2, 3 and 4: " << example.add(2, 3, 4) << endl;   // Calls the second overload
    cout << "Sum of 2.5 and 3.5: " << example.add(2.5, 3.5) << endl; // Calls the third overload

    return 0;
}
