class Person{

  late String name;

  late int age;


  Person(this.name, this.age);

  void Present(){
    print("Name: $name \n Age: $age");
  }

}

class Student extends Person{

  late String sid;

  late double gpa;

  
   Student(super.name, super.age, this.sid, this.gpa);

  @override
  void Present(){
    super.Present();
    print("SID: $sid \n GPA: $gpa");
  }

}

class Lecturer extends Person{
  
  late double level;
  
  late String room;

  Lecturer(super.name, super.age, this.level, this.room);

  @override
  void Present(){
    super.Present();
    print("Level: $level \n Room: $room");
  } 

}

 void main(List<String> args) {
  var p1 = new Student("John", 19, "p1", 7.2);
  var p2 = new Lecturer("Harry", 39, 3.2, "201");
  var p3 = new Student("Peter", 19, "p3", 8.2);
  var p4 = new Lecturer("Dean", 39, 4.2, "401");
  var p5 = new Student("Marry", 19, "p5", 7.0);
  var p6 = new Lecturer("Larry", 50, 3.5, "801");
  var p7 = new Lecturer("Garry", 49, 4.2, "701");
  var p8 = new Student("Jack", 21, "p8", 6.2);
  var p9 = new Lecturer("Obama", 44, 4, "901");
  var p10 = new Student("Tom", 19, "p10", 8.2);
  
  List<Person> arr = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10];

  for(var item in arr){
    item.Present();
    print("-------------------------");
  }
}