public class EncapsulationJava {
    private String accountHolder;
    private double balance;

    // Constructor
    public EncapsulationJava(String name, double initialBalance) {
        accountHolder = name;
        balance = initialBalance;
    }

    // Method to deposit money
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposited: " + amount);
        } else {
            System.out.println("Deposit amount must be positive!");
        }
    }

    // Method to withdraw money
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrawn: " + amount);
        } else {
            System.out.println("Invalid withdrawal amount!");
        }
    }

    // Method to check the balance
    public double getBalance() {
        return balance;
    }

    // Method to get the account holder's name
    public String getAccountHolder() {
        return accountHolder;
    }

    public static void main(String[] args) {
        EncapsulationJava account = new EncapsulationJava("John Doe", 1000.0);
        account.deposit(500);
        account.withdraw(200);
        System.out.println("Current Balance: " + account.getBalance());
    }
}
