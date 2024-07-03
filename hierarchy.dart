class Father{
  void Carpender(){
    print("He is a Carpender");
  }
  void smoker(){
    print("He is a smoker");
  }

  }
  class ThirdChild extends Father {
    void chef(){
      print("He is a chef");
    }
    void Friends(){
      print("He have lot of friends");
    }
  }
  class FirstChild extends Father{
    void Teacher(){
      print("She is a lucturer");
    }
    void wife(){
      print("She is married");
    }
  }
  void main(){
    FirstChild jilku=FirstChild();
    jilku.Teacher();

  }
