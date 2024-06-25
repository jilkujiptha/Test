void main(){
  int s=0;
  for (int i=1;i<=4;i++){
    String str="";
    for(int j=1;j<=i;j++){
         s=s+1;
         str+=s.toString();
   
    }
    print(str);

    }
}