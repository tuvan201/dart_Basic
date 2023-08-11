 import 'dart:io';

void main(List<String> args) {
  try{
    double h = double.parse(stdin.readLineSync()!);

    double w = double.parse(stdin.readLineSync()!);
  
    if(h <= 0 || w <= 0 ){
      throw FormatException();
    }
    double s = h*w;
    print("dien tich cua mieng dat la $s");
    
    print("nhap gia tien cua 1m vuong: ");
    int cost = int.parse(stdin.readLineSync()!);
    if(cost <= 0){
      throw FormatException();
    }
    double total = s*cost;
    print("miếng đất có giá là $total");
  } 
  on FormatException{
    print("chieu dai > 0 va chieu rong > 0 và gia tien > 0");
  } 
  finally{
    print("done");
  }
}