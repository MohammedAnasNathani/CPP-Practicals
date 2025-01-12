public class FunctionOverloadingJava {

    // Overloaded method to add two integers
    public int add(int a, int b) {
        return a + b;
    }

    // Overloaded method to add three integers
    public int add(int a, int b, int c) {
        return a + b + c;
    }

    // Overloaded method to add two double values
    public double add(double a, double b) {
        return a + b;
    }

    public static void main(String[] args) {
        FunctionOverloadingJava example = new FunctionOverloadingJava();

        System.out.println("Sum of 2 and 3: " + example.add(2, 3)); // Calls the first overload
        System.out.println("Sum of 2, 3 and 4: " + example.add(2, 3, 4)); // Calls the second overload
        System.out.println("Sum of 2.5 and 3.5: " + example.add(2.5, 3.5)); // Calls the third overload
    }
}
