//Singleton yapısı static kavramı ile alakalıdır.
//Static bir nesneyi bir kez oluşturup bellekte aynı şekilde tutan ve sonrasında new lemeden kullanmaya yarayan yapıdır.
//1-static ile tanımlanan değişken veya obje program sonlanmadığı sürece ölmez.
//2-static ile tanımlanan değere sınıf içerisinde static fonksiyonla erişebiliriz.public vb ile erişimi yapılamaz .
void main() {
  final newProduct = Product.money;
}

void calculateMoney() {
  if (Product.money > 5) {
    print('money 5 den büyük');
  }
}

class Product {
  static int money = 10;

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}
