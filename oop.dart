class student{
  String? name;
  int? age;
  student({name,age}){

  
    this.name=name;
    this.age=age;
    }

  void printName(){
    print("name is $name and age is $age");
  }
}
void main(){
  student jiptha =student(name:"jiptha",age:22);
 // jiptha.name="jiptha";
  //jiptha.age=22;
  jiptha.printName();
}