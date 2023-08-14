void main(List<String> args) {
  print("start");

  fetchData().then((result){
    print("data: $result");
  }).catchError((error){
    print("error: $error");
  });
}

Future<String> fetchData() async{
  print("fetching data.....");
  await Future.delayed(Duration(seconds: 2)); // gỉa lập thời gian chờ
  //throw Exception(something went wrong);
  print("data fetched");
  return "hello, world";
}