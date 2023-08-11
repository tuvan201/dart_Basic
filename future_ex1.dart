import 'dart:io';
import 'dart:async';


demo(int x,int y) async{
  Future.delayed(Duration(milliseconds: 10000),()
  {
    print(x*y);
  });
}
void main(List<String> args) async {
  await demo(5,4);
  print("Who will come first. Is it this line?");
}