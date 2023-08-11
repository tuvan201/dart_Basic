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
  
  double? getAverage(){
    double sum = 0.0;
    for(var i = 0; i < salaries.length; i++){
      sum += salaries[i];
    }
    return average = sum / salaries.length;
  }
}

 void main(List<String> args) {

  stdout.write("Nhập số tháng lương mà nhân viên đã được nhận: ");
  int n = int.parse(stdin.readLineSync()!); 

  stdout.write("Nhập tên: ");
  String name = stdin.readLineSync()!;

  stdout.write("nhập mã định danh: ");
  int id = int.parse(stdin.readLineSync()!);

  List<double> salaries = [];
  for(int i = 0; i < n; i++){
    stdout.write("nhập lương tháng $i: ");
    double salary = double.parse(stdin.readLineSync()!);
    salaries.add(salary);
  }

  Employee em = Employee(name, id, salaries,0);
  em.average = em.getAverage()!;

  if (em.average < 1000) {
    print("xếp hạng: D");
  } else if (em.average >= 1000 && em.average < 2000) {
    print("xếp hạng: C");
  } else if (em.average >= 2000 && em.average < 3000) {
    print("xếp hạng: B");
  } else {
    print("xếp hạng: A");
  }
}