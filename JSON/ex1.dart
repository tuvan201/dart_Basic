import 'dart:convert'; //thư viện chuyển đổi kiểu dữ liệu trong json


class Product{
  Product({required this.productName,required this.brand});
   final String productName;
   
   final String brand;

   factory Product.fromJson(Map<String, dynamic> data){
    final productName = data['productName'] as String;
    final brand = data['brand'] as String;
    return Product(productName: productName, brand: brand);
   }

   Map<String, dynamic> toJson(){
    return {
      'productName' :this.productName,
      'brand' : this.brand
    };
   }
}
void main(List<String> args) {
  final json = '{"productName": "Suit", "brand" : "Armani"}';
  final parsedJson = jsonDecode(json);
  print('${parsedJson.runtimeType} : $parsedJson');

  final product = Product.fromJson(parsedJson);
  print(product.productName);
  print(product.brand);

  final product2 =Product(productName: "Hat", brand: "PSSG");
  final jsonMap = product2.toJson();
  final encodeJson = jsonEncode(jsonMap);
  print(encodeJson);
}