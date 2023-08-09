import 'dart:io';
void main(List<String> args) {
  //witten a program get fullname and age from user input from keyboard
  print("Enter your name: ");
  var name = stdin.readLineSync();
  print("Enter your age: ");
  try{
    //If can not convert the data from user input from keyboard
    //tryParse will return null data
    var age = int.tryParse(stdin.readLineSync()!); 
    var notifi;
    if(age != null){
       notifi = "Your name is $name and your age is $age";
    }else{
      //if value return is null
       notifi = "age not a integer";
    }
    print(notifi);
  }
  catch(e){
    if(e is FormatException)
    print("age not a integer");
  }

}