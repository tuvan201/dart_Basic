import 'dart:io';

class LessThanException implements Exception{
  String expMsg() => "Enterd a should be greater than b";
}
class NotIntegerException implements Exception{
  String expMsg() => "Enterd a and b should be integer";
}
void main(List<String> args) {
  try{
    stdout.write('Enter a: ');
    var a = int.tryParse(stdin.readLineSync()!);

    stdout.write('Enter b: ');
    var b = int.tryParse(stdin.readLineSync()!);

    if (a == null || b == null) {
      throw NotIntegerException();
    }
    if(a < 0){
      throw FormatException();
    }
    if(a < b){
      throw LessThanException();
    }
    int result = a % b;
    print(" $result");
  }
  catch(e){
    if(e is FormatException){
      print("a && b phai la so duong");
    }
    if(e is LessThanException){
      print("a phai lon hon b");
    }
    if(e is NotIntegerException){
      print("a va b phai la so nguyen");
    }
  }
  finally{
    print("done");
  }
}