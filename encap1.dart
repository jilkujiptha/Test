class Bank{
  double _balance=0.0;

  double get balance=>_balance;
  

  void deposit(double amount){
    this._balance+=amount;
  }




void withdraw(double amnt){
  this._balance-=amnt;
}
}
void main(){
  Bank account=Bank();
  account.deposit(100000);
  print("Balance after deposit:${account.balance}");
  account.withdraw(500);
  print("Balance after withdraw:${account._balance}");

}