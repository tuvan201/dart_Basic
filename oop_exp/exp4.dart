class InvalidScoreException implements Exception {
   String errorMessage() {
    return 'Invalid score value!';
  }
}

class Student {
  String name;
  int age;
  double score;

  Student(this.name, this.age, this.score) {
    validateScore();
  }

  void validateScore() {
    if (score < 0 || score > 10) {
      throw InvalidScoreException();
    }
  }
}

void main() {
  try {
    // Tạo một học viên với điểm số không hợp lệ
    var student1 = Student('John', 20, 15.5);
    print('Tên học viên: ${student1.name}');
    print('Tuổi: ${student1.age}');
    print('Điểm số: ${student1.score}');
  } catch (e) {
    if(e is InvalidScoreException){
      print(e.errorMessage());
    }
  }

  try {
    // Tạo một học viên với điểm số hợp lệ
    var student2 = Student('Jane', 22, 8.5);
    print('Tên học viên: ${student2.name}');
    print('Tuổi: ${student2.age}');
    print('Điểm số: ${student2.score}');
  } catch (e) {
    // Không xảy ra ngoại lệ
  }
}
