class Person {
    // Instance variables
    private String name;
    private int age;

    // Constructor
    public Person(String name, int age) {
        this.name = name; // Using 'this' to distinguish instance variable from parameter
        this.age = age;
    }

    // Method to display person's information
    public void displayInfo() {
        System.out.println("Name: " + this.name); // 'this' is optional here
        System.out.println("Age: " + this.age); // 'this' is optional here
    }

    // Method to set a new name
    public void setName(String name) {
        this.name = name; // Using 'this' to refer to the instance variable
    }

    // Method to set a new age
    public void setAge(int age) {
        this.age = age; // Using 'this' to refer to the instance variable
    }
}

public class thisKeywordInJava {
    public static void main(String[] args) {
        // Create a new Person object
        Person person = new Person("Alice", 30);

        // Display initial information
        person.displayInfo();

        // Update name and age
        person.setName("Bob");
        person.setAge(35);

        // Display updated information
        person.displayInfo();
    }
}
