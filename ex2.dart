import 'dart:io';
void main(List<String> args) {
  print("Enter a number: ");
  int? num = int.tryParse(stdin.readLineSync()!);
  if(num != null){
    if(num % 2 ==0){
      print("$num is even");
    }
    else{
      print("$num is odd");
    }
  }
  else{
    print("user input from keyboard is not integer");
  }
}