class Rectangle {
    private double length;
    private double width;

    // Constructor with parameters
    public Rectangle(double l, double w) {
        this.length = l;
        this.width = w;
    }

    // Method to calculate area
    public double area() {
        return length * width;
    }

    // Method to display dimensions
    public void display() {
        System.out.println("Length: " + length + ", Width: " + width);
    }
}

public class ConstructorJava {
    public static void main(String[] args) {
        // Creating an object of Rectangle
        Rectangle rect = new Rectangle(5.0, 3.0);

        // Display dimensions and area
        rect.display();
        System.out.println("Area: " + rect.area());
    }
}
