/*Bạn đang viết một chương trình quản lý một cửa hàng sách. Hãy triển khai một lớp `Book` (Sách) 
với các thuộc tính là `title` (tiêu đề), `author` (tác giả) và `price` (giá sách).

Lớp `Book` cần có các phương thức sau:

Một phương thức khởi tạo `Book(String title, String author, double price)` để khởi tạo đối tượng sách với tiêu đề, 
tác giả và giá sách.
Một phương thức `validatePrice` để kiểm tra nếu giá sách nhỏ hơn 0, ném ra ngoại lệ `InvalidPriceException`.
Hãy thực hiện việc triển khai lớp `Book` và xử lý ngoại lệ `InvalidPriceException` khi giá sách không hợp lệ.*/


class Book {
  late String title;

  late String author;

  late double price;

  Book(this.title, this.author, this.price){
    validatePrice();
  }

  validatePrice(){
    if(price < 0){
      throw InvalidPriceException();
    }
  }
}

class InvalidPriceException implements Exception{
  String expMsg() => "Invalid price value!";
}

void main(List<String> args) {
  try{
    Book book = new Book("Bụi mận gai","Nguyễn Văn Tứ",10);
    print(book.title);
    print(book.author);
    print(book.price);
  }
  catch(e){
    if(e is InvalidPriceException){
      print(e.expMsg());
    }
  }
  finally{  
    print("done");
  }
   try{
    Book book = new Book("Bụi mận gai","Nguyễn Văn Tứ",-1);
    print(book.title);
    print(book.author);
    print(book.price);
  }
  catch(e){
    if(e is InvalidPriceException){
      print(e.expMsg());
    }
  }
  finally{
    print("done");
  }
}