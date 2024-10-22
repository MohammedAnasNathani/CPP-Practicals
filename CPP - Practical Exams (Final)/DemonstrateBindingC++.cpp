#include <iostream>

class Animal
{
public:
    // Virtual function for dynamic binding
    virtual void speak()
    {
        std::cout << "Animal speaks\n";
    }
};

class Dog : public Animal
{
public:
    void speak() override
    { // Override the base class method
        std::cout << "Dog barks\n";
    }
};

class Cat : public Animal
{
public:
    void speak() override
    { // Override the base class method
        std::cout << "Cat meows\n";
    }
};

void makeAnimalSpeak(Animal *animal)
{
    animal->speak(); // Dynamic binding occurs here
}

int main()
{
    Dog myDog;
    Cat myCat;

    makeAnimalSpeak(&myDog); // Calls Dog's speak method
    makeAnimalSpeak(&myCat); // Calls Cat's speak method

    return 0;
}
