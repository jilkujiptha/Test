class laptop{
  int? id;
  String?name;
  String? Ram;
  laptop({id,name,Ram}){
    this.id=id;
    this.name=name;
    this.Ram=Ram;
  }
  void prop(){
    print("id is ${this.id},name is ${this.name} and ram is ${this.Ram}");
  }
  

}
void main(){
  laptop lap=laptop(id: 1,name: "Dell",Ram: "5GB");
  laptop lap1=laptop(id: 2,name: "HP",Ram: "4GB");
  laptop lap2=laptop(id: 3,name: "viewsonic",Ram: "3GB");
  lap.prop();
  lap1.prop();
  lap2.prop();
}