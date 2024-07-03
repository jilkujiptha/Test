class Father{
  String? job;
  String? childs;
  void smoker(){
    print("He is a smoker");
  }
}
class child extends Father{
  String? name;
  String? age;
  void student(){
    print("job:$job");
    print("childs:$childs");
    print("name:$name");
    print("age:$age");
  }
}
void main(){
  child jiptha=child();
  jiptha.age="22";
  jiptha.name="jiptha";
  jiptha.student();
}

