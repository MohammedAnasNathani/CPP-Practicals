class Animal {
    // Virtual function for dynamic binding
    void speak() {
        System.out.println("Animal speaks");
    }
}

class Dog extends Animal {
    void speak() { // Override the base class method
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    void speak() { // Override the base class method
        System.out.println("Cat meows");
    }
}

public class DemonstrateBindingJava {
    static void makeAnimalSpeak(Animal animal) {
        animal.speak(); // Dynamic binding occurs here
    }

    public static void main(String[] args) {
        Dog myDog = new Dog();
        Cat myCat = new Cat();

        makeAnimalSpeak(myDog); // Calls Dog's speak method
        makeAnimalSpeak(myCat); // Calls Cat's speak method
    }
}
