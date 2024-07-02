class House{
  int? id;
  String? name;
  int? price;
  House (int id,String name,int price){
    this.id=id;
    this.name=name;
    this.price=price;
  }
  void prop(){
    List list=[];
    // print("id is $id,name is $name and price is $price");
     list.add(id);
  list.add(name);
  list.add(price);
  print(list);

  }
}

void main(){
  
  House hs=House(1, "jiptha's house", 100000000);
  House hs1=House(2, "aswin's house", 30000000);
  House hs2=House(3, "valvarde", 20000000);
 
  hs.prop();
  hs1.prop();
  hs2.prop();
  
}