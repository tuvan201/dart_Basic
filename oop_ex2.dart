import 'dart:io';

class Person {
  late String name;
  late int id;

  Person(this.name, this.id);
}

class Employee extends Person {
  late List<double> salaries;
  late double average;

  Employee(String name, int id, this.salaries) : super(name, id);

  void getAverage() {
    average = salaries.reduce((value, element) => value + element) / salaries.length;
  }
  promote(){}
}

class Manager extends Employee {
  Manager(String name, int id, List<double> salaries) : super(name, id, salaries);

  void getAverage() {
    average = salaries.reduce((value, element) => value + element) / salaries.length;
  }

  @override
   promote() {
    if (average >= 3000 && !salaries.any((salary) => salary < 3000)) {
      return Manager(name, id, salaries);
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  stdout.write('Enter the number of months: ');
  var n = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the name: ');
  var name = stdin.readLineSync()!;

  stdout.write('Enter the ID: ');
  var id = int.parse(stdin.readLineSync()!);
  var employee;
  List<double> arr=[];
  for(int i =0;i<n;i++){
    stdout.write('Enter the salary: ');
    var salary = double.parse(stdin.readLineSync()!);
    arr.add(salary);
  }
  employee = Employee(name, id, arr);
  employee.getAverage();

  if (employee.average < 1000) {
    print('Rank: D');
  } else if (employee.average >= 1000 && employee.average < 2000) {
    print('Rank: C');
  } else if (employee.average >= 2000 && employee.average < 3000) {
    print('Rank: B');
  } else {
    print('Rank: A');
  }
  Manager mn  = Manager(name, id, arr);
  mn.getAverage();
  var mn1 = mn.promote();
  if(mn1 is Manager){
    print("len chuc thanh cong");
  }
  else{
    print("chua du dieu kien");
  }
}
