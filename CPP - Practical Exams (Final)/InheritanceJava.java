// Base class
class Animal {
    void speak() {
        System.out.println("Animal speaks");
    }
}

// Derived class
class Dog extends Animal {
    void bark() {
        System.out.println("Dog barks");
    }
}

public class InheritanceJava {
    public static void main(String[] args) {
        Dog myDog = new Dog();
        myDog.speak(); // Inherited method
        myDog.bark(); // Dog's own method
    }
}