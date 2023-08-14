import 'dart:io';

class Road{
  final int id;
  final String name;
  final int L;
  final int homeLeft;
  final int homeRight;
  final List<int> from ;
  final List<int> to;
  Road({required this.id,required this.name, required this.L, required this.homeLeft, required this.homeRight, 
  required this.from, required this.to});
}

void main(List<String> args) {
  stdout.write("Mời bạn nhấp số con đường muốn tạo: ");
  int n = int.parse(stdin.readLineSync()!);
  List<Road> arrRoad = [];
  for (var i = 0; i < n; i++) {
    print("Mời bạn nhập thông tin cho con đường thứ "+(i+1).toString());
    String input = stdin.readLineSync()!;
    List<String> inputList = input.split(" ");
      arrRoad.add(Road(
        id: int.parse(inputList[0]),
        name: inputList[1],
        L: int.parse(inputList[2]),
        homeLeft: int.parse(inputList[3]),
        homeRight: int.parse(inputList[4]),
        from : [int.parse(inputList[5]), int.parse(inputList[6]), int.parse(inputList[7])],
        to : //[inputList[8],inputList[9],inputList[10]]
              [int.parse(inputList[8]), int.parse(inputList[9]), int.parse(inputList[10])]
        ));
  }
  var sum =0.0;
  for (var e in arrRoad) {
    stdout.write(e.id);
    stdout.write(" ");
    stdout.write(e.name);
    stdout.write(" ");
    stdout.write(e.L);
    stdout.write(" ");
    stdout.write(e.homeLeft);
    stdout.write(" ");
    stdout.write(e.homeRight);
    stdout.write(" ");
    for (var ec in e.from) {
      stdout.write(ec);
      stdout.write(" ");
    }
    for (var ec in e.to) {
      stdout.write(ec);
      stdout.write(" ");
    }
    sum+= e.L;
    stdout.write("\n");
  }
  sum = sum / arrRoad.length;
  var round = sum.toInt() + 1;
   print("trung binh cộng chiều chiều của con đường $sum");
  print("số nguyên bé nhất nhưng lớn hơn trung bình cộng của các con đường: $round");

  var check = arrRoad.any((element) => element.id < 0);
  if(check){
    print("1");
  }
  else{
    List <int> uniqueID = arrRoad.map((e) => e.id).toSet().toList();
    bool isDuplicateID = uniqueID.length != arrRoad.length;
    if(isDuplicateID){
      print("1");
    }
    else{
      print("0");
    }
  }

  //mật độ nhà trên một km
  var maxDensity = arrRoad[0].homeLeft +arrRoad[0].homeRight ~/1000;
  var indexMaxDensity = 0;
  for (var i = 0; i< arrRoad.length;i++) {
    var density = arrRoad[0].homeLeft + arrRoad[0].homeRight ~/ 1000;
    if(density > maxDensity){
      maxDensity = density;
      indexMaxDensity = i;
    }
  }
  print("con đường có mật độ dân nhiều nhất là ${arrRoad[indexMaxDensity].name} = $maxDensity");

}