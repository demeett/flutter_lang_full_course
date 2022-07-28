void main(List<String> args) {
  final model =
      Car(model: CarModels.audi, name: "", money: 500, isSecondHand: false);
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
  //secondhand olanlar var mı? Any cevap olarak direk true false döndürür.
  final result = carItems.any((element) => element.isSecondHand == true);
  //secondhand olanların sayısı nedir? Where koşula uyanların kendisini içinde tutar .
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;

  //yeni araba geldi
  final newCar =
      Car(model: CarModels.bmw, name: 'xx', money: 1000, isSecondHand: false);
  //aşağıdaki yapının doğru çalışması için equality eklenmesi gerek .
  final isHaveCar = carItems.contains((element) => element.name == newCar.name);

  //bmw olan ve parası 200 den   büyük olanları söyle
  //tositring methodunu değiştirdiğimiz zaman resultbmw içidenki yapıyı direk görebiliriz.
  final resultBmw = carItems.where((element) {
    return element.model == CarModels.bmw && element.money > 200;
  }).join();

  final training = carItems.join();
  print(training);

  //Map ile verileri alma
  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  //benim elimde mercedes var mı? Bir tane bile olsa benim için yeter demek istiyor ve bunu singleWhere ile yapabilir..
  //Fakat elimde mercedes yok . Hata alacağım .
  try {
    final mercedesCar =
        carItems.singleWhere((element) => element.model == CarModels.mercedes);
    print(mercedesCar);
  } catch (e) {
    //catch'de loglamalarını yapabilirsin
    print('araba yok');
  } finally {
    print('başka işelem yapacak mısınız');
  }

  //yeni gelen arabaya var demiştin bunun kaçıncı sırada olduğunu söyler misin
  final index = carItems.indexOf(newCar);
  print(index);
}

//benim arabalar sınıfım olacak.
//arabaların modeli ,ismi, parası kesin olacak, şehri olmayacak , ikinci el durumu eğer müşteri söylemezse her ürün iikinci el kabul edilecek.
//Benim 5 tane arabam olacak
//yeni bir arada geldi bu bizde var gibi hissediyorum doğru mu?
class Car {
  final CarModels model;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  Car(
      {required this.model,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true});

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, mercedes, audi, yamaha, toyata }
