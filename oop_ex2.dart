import 'dart:io';

class Person{

  late String name;

  late int id;

  Person(this.name, this.id);

}

class Employee extends Person{

  late List<double> salaries;

  late double average;

  Employee(super.name, super.id, this.salaries, this.average);
  
  void getAverage(){
    double sum = 0.0;
    for(var i = 0; i < salaries.length; i++){
      sum += salaries[i];
    }
    average = sum / salaries.length;
    print("Mức lương trung bình của nhân viên $average");
  }
}

 void main(List<String> args) {

  stdout.write("Nhập số tháng lương mà nhân viên đã được nhận: ");
  int n = int.parse(stdin.readLineSync()!); 
  
}