// Q1: Create a class called "BankAccount" with the following attributes and methods:
// ● account_number (integer)
// ● balance (double)
// ● account_type (string)
// ● interest_rate (double)
// ● deposit(amount): adds the amount to the balance.
// ● withdraw(amount): subtracts the amount from the balance. You cannot withdraw
// more than the current balance.
// ● add_interest(): adds interest to the balance based on the interest rate.
// ● display(): prints out the account number, balance, account type, and interest rate.
// Then, create two instances of the BankAccount class, each with its own account number,
// balance, account type, and interest rate.
// Finally, call the deposit(), withdraw(), add_interest(), and display() methods on each instance
// and confirm that the information is updated and displayed correctly.

class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;
  BankAccount(
      this.accountNumber, this.balance, this.accountType, this.interestRate);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient funds!");
    }
  }

  void addInterest() {
    balance += balance * (interestRate / 100);
  }

  void display() {
    print("Account Number: $accountNumber");
    print("Balance: $balance");
    print("Account Type: $accountType");
    print("Interest Rate: $interestRate%");
  }
}

void main() {
  var account1 = BankAccount(123456789, 1000.0, "Savings", 1.5);
  var account2 = BankAccount(987654321, 5000.0, "Checking", 2.0);

  
  account1.deposit(500);
  account1.withdraw(200);
  account1.addInterest();
  account1.display();

  account2.deposit(1000);
  account2.withdraw(2000);
  account2.addInterest();
  account2.display();
}




