
import 'dart:math';

class Circle{
  late double radius;
  
  Circle(this.radius);

  double calculateArea(){
    return pi * pow(radius,2);
  }

  double calculatePerimeter(){
    return 2 * pi * radius;
  }

  bool isLarger(Circle ortherCircle){
    return this.calculateArea() > ortherCircle.calculateArea();
  }
}

void main(List<String> args) {
  
  Circle ci1 =Circle(5);
  Circle ci2 =Circle(6);

  var area1 = ci1.calculateArea();
  var perimeter1 = ci1.calculatePerimeter();

  print("Circle 1 area is: $area1 - Circle perimeter is: $perimeter1");

  var area2 = ci2.calculateArea();
  var perimeter2 = ci2.calculatePerimeter();

  print("Circle 2 area is: $area2 - Circle perimeter is: $perimeter2");

  bool isLarger = ci1.isLarger(ci2);
  print("is Circle 1 is larger than Circle 2 ? $isLarger");
}