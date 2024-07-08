import 'dart:io';
class Bank{
    double _balance=0.0;


    double get balance=>_balance;

    void Deposit(double amount){
        this._balance+=amount;
    }

    void Withdraw(double amnt){
        this._balance-=amnt;
    }
}


void main(){
File file=File("dart.txt");
    var account=Bank();
    while(true){
        print("=============================");
        print("1.Deposit");
        print("2.Withdraw");
        print("3.Balance");
        print("4.Exit");
        print("=============================");
        print("Enter your choice");
        int choice=int.parse(stdin.readLineSync()!);
        print("=============================");
        if(choice==1){

          print("Deposit amount");
            double x=double.parse(stdin.readLineSync()!);
            account.Deposit(x);
            String content=file.readAsStringSync();
            double y=double.parse(content);
            y=y+x;
            file.writeAsStringSync("$y");
            print("$x is deposited");

        }
        else if(choice==2){
            print("Withdraw amount");
            double y=double.parse(stdin.readLineSync()!);
            account.Withdraw(y);
            String content=file.readAsStringSync();
            double? x=double.parse(content);
            x=x-y;
            file.writeAsStringSync("$x");
            print("$y is withdraw");
          
        }
        else if(choice==3){
          String content=file.readAsStringSync();
          print(content);

        }
        else if(choice==4){
          print("exit.......");
          break;
        }
        else{
          print("Invalid");
        }
    }
} 