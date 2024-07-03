class House{
  int? id;
  String? name;
  int? price;
  House({id,name,price}){
    this.id=id;
    this.name=name;
    this.price=price;

  }
  void printName(){
    List ls=[];
    //print("id is ${this.id},name is ${this.name} and price is ${this.price}");
    ls.add(id);
    ls.add(name);
    ls.add(price);
    print(ls);

  }


}
void main(){
  House hs=House(id: 1,name: "jiptha",price: 100000000);
  House hs1=House(id: 2,name: "jilku",price: 20000000);
  House hs2=House(id: 3,name: "jilan",price: 10000000 );
  hs.printName();
  hs1.printName();
  hs2.printName();
}