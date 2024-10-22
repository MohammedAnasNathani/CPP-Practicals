#include <iostream>

// Function to add two natural numbers
int add(int a, int b)
{
    return a + b;
}

// Recursive function to multiply two natural numbers
int multiply(int x, int y)
{
    // Base case
    if (y == 0)
        return 0;
    // Recursive case: x * y = x + (x * (y - 1))
    return add(x, multiply(x, y - 1));
}

int main()
{
    int num1 = 5, num2 = 3;
    int result = multiply(num1, num2);
    std::cout << "Result of " << num1 << " * " << num2 << " = " << result << std::endl;
    return 0;
}