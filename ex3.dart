import 'dart:io';
void main(List<String> args) {
  print("Enter a number: ");
  var num = double.tryParse(stdin.readLineSync()!);
  if(num != null){
    int x = num.round();
    print(x);
  }
}