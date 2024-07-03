class Person{
  String? name;
  int? age;
Person({this.name,this.age}){
  print("person constructor");
}
Person.named({this.name,this.age}){
  print("named constructer");

}

}


class Student extends Person{
  int? rollNo;
  Student({name,age,this.rollNo}):super.named(name: name,age: age){
   print("student constructer"); //(name: name,age: age);
}
}
void main(){
  var stud=Student(name: "Jiptha",age: 22,rollNo: 15);
  print(stud.name);
  print(stud.age);
  print(stud.rollNo);
}