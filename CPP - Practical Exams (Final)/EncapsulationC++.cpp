#include <iostream>
#include <string>

class BankAccount
{
private:
    std::string accountHolder;
    double balance;

public:
    // Constructor
    BankAccount(std::string name, double initialBalance)
    {
        accountHolder = name;
        balance = initialBalance;
    }

    // Method to deposit money
    void deposit(double amount)
    {
        if (amount > 0)
        {
            balance += amount;
            std::cout << "Deposited: " << amount << "\n";
        }
        else
        {
            std::cout << "Deposit amount must be positive!\n";
        }
    }

    // Method to withdraw money
    void withdraw(double amount)
    {
        if (amount > 0 && amount <= balance)
        {
            balance -= amount;
            std::cout << "Withdrawn: " << amount << "\n";
        }
        else
        {
            std::cout << "Invalid withdrawal amount!\n";
        }
    }

    // Method to check the balance
    double getBalance() const
    {
        return balance;
    }

    // Method to get the account holder's name
    std::string getAccountHolder() const
    {
        return accountHolder;
    }
};

int main()
{
    BankAccount account("John Doe", 1000.0);
    account.deposit(500);
    account.withdraw(200);
    std::cout << "Current Balance: " << account.getBalance() << "\n";
    return 0;
}
