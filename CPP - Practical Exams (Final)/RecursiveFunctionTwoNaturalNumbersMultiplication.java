public class RecursiveFunctionTwoNaturalNumbersMultiplication {

    // Function to add two natural numbers
    public static int add(int a, int b) {
        return a + b;
    }

    // Recursive function to multiply two natural numbers
    public static int multiply(int x, int y) {
        // Base case
        if (y == 0)
            return 0;
        // Recursive case: x * y = x + (x * (y - 1))
        return add(x, multiply(x, y - 1));
    }

    public static void main(String[] args) {
        int num1 = 5, num2 = 3;
        int result = multiply(num1, num2);
        System.out.println("Result of " + num1 + " * " + num2 + " = " + result);
    }
}
