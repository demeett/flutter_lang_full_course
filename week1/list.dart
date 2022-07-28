//import 'dart:indexed_db';

void main() {
  //bir bankaya on müsteri gelir bunların 100 tlsi 110 tlsi 50 tlsi vardır .

  //<<Liste Tanımlama >>////
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print('musteri1 in parası: ${moneys[0]}');
  print('musteri2 nin parası: ${moneys[1]}');
  print('musteri3 ün parası: ${moneys[2]}');
  print('selam');
  //paraları büyük olana göre sırala
  moneys.sort();
  //moenyse ekle
  moneys.add(5);

  ///moneysde belirli inserte eleman ekleme methodu
  moneys.insert(2, 800);
  print(moneys);

  //Direk başa eleman eklemek istersek
  moneys.insert(0, 15);

  ///<<<< 100 tane müşteri oluştur ve sırasıyla 5 tl arttır.
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  ///Cusmtomers 100,30,40,60
  ///35 tl den büyük olanlaera kredi ver küçük olanlara by yaz
  List<int> customers = [100, 40, 60, 30];
  for (int i = 0; i < customers.length; i++) {
    if (customers[i] > 35) {
      print('Kredi çekebilirsiniz');
    } else {
      print('bye');
    }
  }
  for (int j = customers.length - 1; j >= 0; j--) {
    if (customers[j] > 35) {
      print('kredi çekilebilir');
    } else {
      print('Kredi çekilemez');
    }
  }

  List<String> names = ["Demet", "HAydar", "VEli"];

  print(names.contains("Demet"));
}
