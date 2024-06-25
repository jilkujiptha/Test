void main(){
 String? name="kiran";
  name="jiptha";
  print(name);
  name=null;
  if(name==null){
    print("$name is null");
  }
  String name1=name??"jilku";
  print (name1);

}