import '../week1/user.dart';

void main(List<String> args) {
  //EXPAND: Verileri birleştirme işlemi gibi düşünülebilir.Bir liste olabilir . Listeye expand edilir
  final carItems = [
    Car(model: CarModels.bmw, name: 'x5', money: 974),
    Car(model: CarModels.audi, name: 'a6', money: 966, isSecondHand: false),
    Car(model: CarModels.yamaha, name: 'ym5', money: 8547),
    Car(
        model: CarModels.toyata,
        name: 'tyt6',
        money: 6310,
        isSecondHand: false),
    Car(model: CarModels.bmw, name: 'xx', money: 1000, isSecondHand: false)
  ];
//Bütün arabalarımı user yapıcam
//Aşağıda caritemsın içindeki user verilerini users değişkenine atadı.
  final users = carItems.expand((element) => element.users).toList();

  final mercedes = Car(
      model: CarModels.mercedes, name: "md", money: 500, isSecondHand: false);
  calculateToUser(List.from(carItems));
  carItems.add(mercedes);
  print(carItems);
  //ismi mercedes olanı sil
  //carItems.remove(mercedes);
  //removeWhere
  //Dikkat: Element.model eşitliğinde enum kullanıldığı için normal string yazısını eşleştirmiyor.
  carItems.removeWhere((element) => element.model == CarModels.mercedes);
  print(carItems);
}

//referansları değiştirmeyi sağlayan yapı returndür .
void calculateToUser(List<Car> items) {
  final _items = [...items.toList()];
  final newItems = _items.map((Car e) {
    return Car(
        model: e.model == CarModels.bmw ? CarModels.yamaha : e.model,
        name: e.name,
        money: e.money);
  }).toList();
  print(newItems);
}

class Car {
  CarModels model;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  List<User> users;
  Car(
      {required this.model,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users =
          const [] //burayı const vermek  zorundayız. Sabit değer olmalı
      });

  @override
  String toString() {
    return '$model-$name - $money';
  }
}

enum CarModels { bmw, mercedes, audi, yamaha, toyata }

//Referans tiplerde yaşanan sorunlaarın önüne geçmek için parametreyi şeklinde yollarsak yeni bir
//liste oluşturmuş olur ve eski listeyi değiştirmez. Referansları aynı yeri işaret etmez.
