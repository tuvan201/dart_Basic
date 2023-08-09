import 'dart:io';
void main(List<String> args) {
 //a program use List Collection request user enter n integer and sort then display 
 List<int> myList = [];
 stdout.write("Enter the number of elements you want to add: ");
 int? n = int.tryParse(stdin.readLineSync()!);
 if(n != null){
  for(int i = 0; i < n; i++){
   stdout.write("Enter element ${i+1}: ");
   var element = int.parse(stdin.readLineSync()!);
   myList.add(element);
  }
  myList.sort((a,b)=>a.compareTo(b)); // sort
  // myList.sort((a,b)=> b.compareTo(a)); //revert
  for (var item in myList) {
    stdout.write("$item ");
  }
  List<String> myList2 = ["apple","banana","connect"];
  myList2.sort((a,b)=> b.compareTo(a));
  print(myList2);
 }
}