import 'dart:convert';
import 'dart:io';

class Person{
   final String name;

   final int age;

   final String id;

   final String address;

  Person(this.name, this.age, this.id, this.address);

  Map<String,dynamic> toJson(){
    return{
      'name' : this.name,
      'age' : this.age,
      'id' : this.id,
      'address' : this.address
    };
  }
}

class Student extends Person{
   final double score;

   final String course;

   final String schoolName;

  Student(String name, int age, String id,String address, this.score, this.course, this.schoolName) : super(name, age, id, address);

  @override
  Map<String,dynamic> toJson(){
    return{
      ...super.toJson(), //bao gồm tất cả các cặp key-value từ lớp cha trong Map trả về
      'score' : this.score,
      'course' : this.course,
      'schoolName' : this.schoolName
    };
  }
}

class Lecturer extends Person{

   final double salary;

   final String dept;

   final String schoolName;

  Lecturer(String name, int age, String id,String address, this.salary, this.dept, this.schoolName) : super(name, age, id, address);

  @override 
  Map<String,dynamic> toJson(){
    return{
      ...super.toJson(),
      'salary' : this.salary,
      'dept' : this.dept,
      'schoolName' : this.schoolName
    };
  }
}

void main(List<String> args) {
  var i=1;
  print("Nhập số học sinh: ");
  int n = int.parse(stdin.readLineSync()!);
  print("Nhập số giảng viên: ");
  int m = int.parse(stdin.readLineSync()!);

  List<Student> students = [];
  List<Lecturer> lecturers = [];
  for (var i = 0; i < n; i++) {
    print("nhập thông tin cho học sinh thứ "+(i+1).toString());
    print("Nhập tên học sinh: ");
    String name = stdin.readLineSync()!;
    print("Nhập tuoi học sinh: ");
    int age = int.parse(stdin.readLineSync()!);
    print("Nhập id học sinh: ");
    String id = stdin.readLineSync()!;
    print("Nhập địa chỉ học sinh: ");
    String address = stdin.readLineSync()!;
    print("nhập điểm số: ");
    double score = double.parse(stdin.readLineSync()!);
    print("nhập khóa học: ");
    String course = stdin.readLineSync()!;
    print("nhập trường học: ");
    String schoolName = stdin.readLineSync()!;
    students.add(Student(name, age, id, address, score, course, schoolName));
  }

  for (var i = 0; i < m; i++) {
    print("Nhập thông tin cho giảng viên thứ "+(i+1).toString());
    print("nhập tên giảng viên: ");
    String name = stdin.readLineSync()!;
    print("nhập tuoi giảng viên: ");
    int age = int.parse(stdin.readLineSync()!);
    print("nhập id giảng viên: ");
    String id = stdin.readLineSync()!;
    print("nhập địa chỉ giảng viên: ");
    String address = stdin.readLineSync()!;
    print("nhập luong: ");
    double salary = double.parse(stdin.readLineSync()!);
    print("nhập khoa: ");
    String dept = stdin.readLineSync()!;
    print("nhập trường học: ");
    String schoolName = stdin.readLineSync()!;
    lecturers.add(Lecturer(name, age, id, address, salary, dept, schoolName));
  }
  for (var student in students) {
   print("Thông tin của học sinh thứ $i: ");
   var jsonStudent = student.toJson();
   var encodeJsonStudent = jsonEncode(jsonStudent);
   print(encodeJsonStudent);
   i++;
  }
  i=1;
  for (var lecturer in lecturers) {
  print("thông tin của giảng viên thứ $i: ");
  var jsonLecturer = lecturer.toJson();
  var encodeJson = jsonEncode(jsonLecturer);
  print(encodeJson);
  i++;
  }
}

