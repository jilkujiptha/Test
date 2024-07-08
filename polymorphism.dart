class Father{
  
  void drink(){
    print("Father drnk alcahol");
  }
}class Child extends Father{
  @override
  void drink(){
    print("son drink pepsi");
  }
}
void main(){

var child=Father();
child.drink();
}