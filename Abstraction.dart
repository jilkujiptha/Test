abstract class Vehicle{
  void start();
  void stop();
}
class Car extends Vehicle {
  @override
  void start(){
    print("car started");
  }
  void stop(){
    print("car stopped");
  }
  
}

  class Bike extends Vehicle {
  @override
  void start(){
    print("bike started");
  }
  void stop(){
    print("bike stopped");
  }
  }
  void main(){
    var car=Car();
    car.start();
    car.stop();


    var bike=Bike();
    bike.start();
    bike.stop();
  }

