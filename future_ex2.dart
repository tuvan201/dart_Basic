import 'dart:io';

class Product {
  late double h, l, d, v, w, c;

  Product(this.h, this.l, this.d);
}

calculate(List<Product> arr){
  for(int i =0;i<arr.length;i++){
    arr[i].v = arr[i].h * arr[i].l * arr[i].d;
  }
  print("đã tính xong thể tích của mỗi sản phẩm");
}

Future sumV(List<Product> arr) async{
 Future.delayed(Duration(milliseconds: 10000),()
  {
    var sum= 0.0;
    for(int i =0;i<arr.length;i++){
      sum+= arr[i].v;
    }
    print(sum);
  });
}
Future<void> main() async {
  List<Product> arr = [];

  stdout.write("Nhập số sản phẩm cần bán (N): ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Nhập chiều cao của sản phẩm $i: ");
    double h = double.parse(stdin.readLineSync()!);

    stdout.write("Nhập chiều dài của sản phẩm $i: ");
    double l = double.parse(stdin.readLineSync()!);

    stdout.write("Nhập chiều rộng của sản phẩm $i: ");
    double d = double.parse(stdin.readLineSync()!);

    Product product = new Product(h, l, d);
    arr.add(product);
  }
  await sumV(arr);
  calculate(arr);

}
