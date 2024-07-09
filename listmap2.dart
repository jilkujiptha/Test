import 'dart:io';
void main(){
  File file=File("map.txt");
  
  String str="";
  List<String>ls=[];
  Map<String,dynamic>mp= new Map();
  while(true){
    print("===============================");
    print("1.Name");
    print("2.Salary");
    print("3.Destination");
    print("4.Exit");
    print("5.Display");
    print("===============================");
    print("Enter a choice");
    int choice=int.parse(stdin.readLineSync()!);
    if(choice==1){
      print("Add any name");
      String? x=stdin.readLineSync();
      mp["Name"]=x;
    }
    else if(choice==2){
      print("Enter your salary");
      String? y=stdin.readLineSync();
      mp["Salary"]=y;
    }
    else if(choice==3){
      print("Enter your Destination");
      String? a=stdin.readLineSync();
      mp["Desination"]=a;
      str=mp.toString();
      ls=str.split(",");
      file.writeAsStringSync("\n$ls",mode: FileMode.append);
    }
    else if(choice==4){
      print(ls);

    }
    else if(choice==5){
      print("exit.....");
      break;
    }
    else{
      print("Invalid choice");
    }
  }
}