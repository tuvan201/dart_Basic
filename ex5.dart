// Compare this snippet from self_Learning/exam/ex5.dart:
void main(List<String> args) {
  sumEven();
  sumOdd();
  int a =5;
  print(square(a));
}
void sumEven(){
  int sum = 0;
  for(var i = 1;i<50;i++){
    if(i % 2 == 0){
       sum += i;
    }
  }
  print("sum of the even integer: $sum");
}
void sumOdd(){
  int sum = 0;
  for(var i = 1;i<49;i++){
      if(i % 2 != 0){
       sum += i;
      }
    }
  print("sum of the odd integer: $sum");
}
  int square(a) => a*a;