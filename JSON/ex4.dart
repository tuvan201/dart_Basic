import 'dart:convert';
import 'dart:io';

class Player{
  final String name;
  final int G;
  final int H;
  final int W;

  Player({ required this.name,required this.G,required this.H,required this.W});

  Map<String, dynamic> toJson(){
    return{
      'name' : this.name,
      'G' : this.G,
      'H' : this.H,
      'W' : this.W
    };
  }
}

void main(List<String> args) {
  stdout.write("Mời bạn nhập số lượng cầu thủ: ");
  int n = int.parse(stdin.readLineSync()!);
  List<Player> players = [];
  for (var i = 0; i < n; i++) {
    print("nhập thông tin cho cầu thủ thứ "+(i+1).toString());
    stdout.write("nhập tên cầu thủ: ");
    String name = stdin.readLineSync()!;
    stdout.write("nhập số bàn: ");
    int G = int.parse(stdin.readLineSync()!);
    stdout.write("nhập chiều cao: ");
    int H = int.parse(stdin.readLineSync()!);
    stdout.write("nhập cân nặng: ");
    int W = int.parse(stdin.readLineSync()!);
    players.add(Player(name: name, G: G, H: H, W: W));
  }
  Player playerWithMostGoals = players.reduce((curr, next) => curr.G > next.G ? curr : next);
  var jsonPlayerWithMostGoals = playerWithMostGoals.toJson();
  var encodeJsonPlayerWithMostGoals = jsonEncode(jsonPlayerWithMostGoals);
  print("cầu thủ có số bàn thắng nhiều nhất:");
  print(encodeJsonPlayerWithMostGoals);

  Player theShortestPlayer = players.reduce((curr,next) => curr.H < next.H ? curr : next);
  var jsonTheShortestPlayer = theShortestPlayer.toJson();
  var encodeJsonTheShortestPlayer = jsonEncode(jsonTheShortestPlayer);
  print("cầu thủ có chiều cao thấp:");
  print(encodeJsonTheShortestPlayer);
}