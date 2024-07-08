enum Gender{male,female,othgers}
class Counter{
  String? name;
  int? age;
  Gender? gender;
  Counter(this.name,this.age,this.gender){}

    void displayCount(){
      print("name is $name,age is $age and gender is $gender");
    }
  

}

void main(){
  var cnt=Counter("Jiptha", 22, Gender.female);
  cnt.displayCount();

}