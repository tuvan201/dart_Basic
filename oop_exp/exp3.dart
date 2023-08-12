/*Tạo một lớp `Animal` (Động vật) với thuộc tính `name` (tên) và phương thức `makeSound` (kêu).
Tạo các lớp con `Cat` (Mèo) và `Dog` (Chó) kế thừa từ `Animal`.
Trong các lớp con, triển khai lại phương thức `makeSound` để in ra âm thanh mà mỗi con vật tạo ra.
Tạo một lớp `Zoo` (Vườn thú) có thuộc tính `animals` (danh sách động vật)
 và các phương thức `addAnimal` (thêm động vật) và `makeAllSounds` (làm tất cả các âm thanh).*/

 class Animal{
  late String name;

  Animal(this.name);

  void makeSound(){
 
  }
 }
 
 class Cat extends Animal{
    Cat(String name) : super(name);

    @override
    void makeSound() {
     // TODO: implement makeSound
     print("${name} is says meow!");
    }

 }

 class Dog extends Animal{
    Dog(String name):super(name);

    @override
    void makeSound(){
      //TODO:implement makeSound
      print("${name} is says bark");
    }
 }

 class Zoo{
 List<Animal> arrAnimal= [];

  addAnimal(Animal an){
    arrAnimal.add(an);
  }

  makeAllSound(){
    for (var animal in arrAnimal) {
      animal.makeSound();
    }
  }
 }

 void main(List<String> args) {
  var z = new Zoo();
  var cat = new Cat("Củ Tỏi");
  var dog = new Dog("Củ Gừng");

  z.addAnimal(cat);
  z.addAnimal(dog);
  z.makeAllSound();
}
