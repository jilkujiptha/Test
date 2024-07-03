class car{
 String? brand;
 int? wheels;
 int? capacity;
 int? tork;
 void printName(){
  print("brand is $brand ,wheels is $wheels,capacity is $capacity and tork is $tork");
 }
  

}
void main(){
  car zen=car();
  zen.brand="zen";
  zen.wheels=4;
  zen.capacity=200;
  zen.tork=200;
  zen.printName();

}