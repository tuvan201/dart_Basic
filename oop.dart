class Emloyee{
  late String eName;
  String get ename{
    return eName;
  }
  set ename(String name){
    this.eName = name;
  }
  void present(){
    print(eName);
  }
}

class Manager extends Emloyee{
  @override
  void present(){
    print("Manager : $eName");
  }
  Manager(){

  }

  Manager.Manager(String name){
    super.ename = name;
  }
}

void main(List<String> arguments){
  Emloyee em = Emloyee();
  em.ename = "John";
  em.present();
  print("Result is ${em.eName}");
  Manager mn = Manager();
  mn.ename = "Jane";
  var m1 = Manager.Manager("david");
  print("Result is ${m1.ename}");
  mn.present();
  print("Result is ${mn.ename}");
}