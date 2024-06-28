import 'dart:io';
void main(){
  File file=File("dart.txt");
  //file.writeAsStringSync("\tHave a good day",mode: FileMode.append);
  String content=file.readAsStringSync();
  print(content);
}