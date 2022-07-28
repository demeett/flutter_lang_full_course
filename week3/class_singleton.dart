//Singleton yapısı static kavramı ile alakalıdır.
//Static bir nesneyi bir kez oluşturup bellekte aynı şekilde tutan ve sonrasında new lemeden kullanmaya yarayan yapıdır.
//1-static ile tanımlanan değişken veya obje program sonlanmadığı sürece ölmez.
//2-static ile tanımlanan değere sınıf içerisinde static fonksiyonla erişebiliriz.public vb ile erişimi yapılamaz .
//Static kullanımı pek önerilen bir şey değildir . Çünkü güvenlik çaısından risklidir
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
  //const yazdığın zaman dışarıdan o değişkenin değerini alabiliriz fakat farklı bir değer ataması yapmaya izin vermez.
  //yani dışardan get işlemini yapabiliyoruz fakat set işlemini yapamıyoruz.
  static const companyName = "DD Bank";
  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
