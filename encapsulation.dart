class Employee{
  var _name;
  
  
  String getName(){
    return _name;
  }
  void setName(name){
    this._name=name;
  }
}
void main(){
  Employee employ=Employee();
  employ.setName("Alan");
  print(employ.getName());
  
}