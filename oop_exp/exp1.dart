/*Tạo một lớp Student (Học sinh) có các thuộc tính: `name` (tên), `age` (tuổi) và `scores` (điểm số)
 là một danh sách điểm số của sinh viên.
Tạo phương thức `addScore` để thêm điểm số mới vào danh sách điểm số của sinh viên.
Tạo phương thức `averageScore` để tính điểm trung bình của sinh viên.*/

import 'dart:io';

class Student {
  late String name;

  late int age;

  late List <int> scores;

  Student(String name, int age, List <int> scores);
  
  Student.Student();

  addScores(int score){
    scores.add(score);
  }

  averageScore(){
    var ave = scores.reduce((value, element) => value + element) / scores.length;
    print("AverageScore score : $ave");
  }

}

void main(List<String> args) {
  // TODO: code start here
  Student st = Student.Student();     //create object Student
  List<int> lstScores = []; // list scores
  stdout.write("enter student name: "); //start enter student infomation
  var name = stdin.readLineSync()!;

  //Exception handling
  try{    

    stdout.write('Enter Age of the student: ');
    var age = int.tryParse(stdin.readLineSync()!);
    if(age == null){
      throw FormatException();
    }
    stdout.write("how many scores does student have: ");
    var num_scores = int.parse(stdin.readLineSync()!);

    for(int i = 0;i<num_scores;i++){
      stdout.write("enter the score: ");
      var score = int.tryParse(stdin.readLineSync()!);
      if(score == null){
        throw FormatException();
      }
      lstScores.add(score);
    }

    //add student
    st.name = name;
    st.age = age;
    st.scores = lstScores;
    //output
    print("-------------------------");
    print("student name : ${st.name}");
    print("age of student: ${st.age}");
    for (var element in lstScores) {
      print("score: $element");
    }
    st.averageScore();

  }
  //catch Exception input from user
  on FormatException{ 
    print("age and score must be integer");
  }
  finally{
    //code end
    print("done");
  }
}