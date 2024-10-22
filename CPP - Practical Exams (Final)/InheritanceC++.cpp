#include <iostream>
#include <string>

// Base class
class Animal
{
public:
    void speak()
    {
        std::cout << "Animal speaks\n";
    }
};

// Derived class
class Dog : public Animal
{
public:
    void bark()
    {
        std::cout << "Dog barks\n";
    }
};

int main()
{
    Dog myDog;
    myDog.speak(); // Inherited method
    myDog.bark();  // Dog's own method
    return 0;
}
