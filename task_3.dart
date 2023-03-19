class BankAccount {
  double balance;
  int accountNumber;

  BankAccount({required this.balance, required this.accountNumber});

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit;

  CheckingAccount(
      {required double balance,
      required int accountNumber,
      required this.transactionLimit})
      : super(balance: balance, accountNumber: accountNumber);

  @override
  void withdraw(double amount) {
    if (amount <= transactionLimit) {
      balance -= amount;
    } else {
      print('Transaction limit exceeded');
    }
  }
}

void main() {
  CheckingAccount checking = CheckingAccount(
      balance: 1000.0, accountNumber: 1234, transactionLimit: 500.0);

  print('Initial balance: ${checking.balance}');

  checking.deposit(250.0);
  print('After deposit: ${checking.balance}');

  checking.withdraw(750.0);
  print('After withdraw within limit: ${checking.balance}');

  checking.withdraw(1000.0);
  print('After withdraw beyond limit: ${checking.balance}');
}
