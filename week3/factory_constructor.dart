void main() {
  final newProduct = Product.money;
  calculateMoney();
}

void calculateMoney() {
  if (Product.money > 5) {
    print('money 5 den büyük');
  }
  if (Product.companyName == "DD Bank") {}
}

class Product {
  static int money = 10;
  String name;
  static const companyName = "DD Bank";
  //Birinci constructor kullanımı
  Product(this.name);
  //İkinci constructor  üretebiliyoruz.Burafa [] işareti yine opsiyonelliği belirtmektedir.
  Product.demet([this.name = 'demet']);

  //FACTORY CONSTRUCTOR : Geriye değer dönmesini istediğimiz bir constructor yazacaksak bunu kullanırız.
  factory Product.fromUser(User user) {
    return Product(user.name);
  }
  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
