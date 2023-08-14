import 'dart:convert';

class Person{
  final String name;

  final int age;

  final int id;

  final String address;

  Person({
    required this.name,
    required this.age,
    required this.id,
    required this.address,
  });

  factory Person.fromJson(Map<String,dynamic> data){
    final name = data['name'] as String;
    final age = int.parse(data['age']);
    final id =  int.parse(data['id']);
    final address = data['address'] as String;
    return Person(name: name, age: age, id: id, address: address);
  }
}

void main(List<String> args) {
  final json = '{"name" : "John","age" : "18", "id" : "78978", "address" : "2 Lake KJ"}';
  final parsedJson = jsonDecode(json);
  print("${parsedJson.runtimeType} : $parsedJson");

  final person = Person.fromJson(parsedJson);
  print(person.name);
  print(person.age);
  print(person.id);
  print(person.address);
}