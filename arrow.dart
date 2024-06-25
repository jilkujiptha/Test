import 'dart:io';
int add (a,b)=>a+b;
void main(){
  print("enetr first number");
  int x=int.parse(stdin.readLineSync()!);
  print("enter second number");
  int y=int.parse(stdin.readLineSync()!);
  int z=add (x,y);
  print(z);
}