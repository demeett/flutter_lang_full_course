void main(List<String> args) {
  final carmodel = Car(BrandName.bmw, 'name', 50);
  carmodel.ClaculateMethod((calculateMoney) {
    print(calculateMoney);
    return calculateMoney;
  });
}

typedef calculateKDV = int Function(int calculateMoney);

class Car {
  BrandName brand;
  String name;
  int money;
  Car(this.brand, this.name, this.money);

  void ClaculateMethod(calculateKDV calculatedMoney) {
    money += (money % 18);
  }
}

enum BrandName { mercedes, audi, bmw, Hyndai }
