import 'dart:typed_data';

void main() {
  final user = _User('demet', age: 21);
  //müşterinin yaşı 18 den küçük mü kontolünü yap.
  if (user.age != null && (user.age ?? 0) < 18) {}
  //ISINT KULLANIMI:
  if (user.age is int) {
    //Burada ünlem işaretini kullanabiliyor olmamızın sebebi user.age kontrolü yapılıp içinin dolu olduğunu bilmemizdendir.
    if (user.age! < 18) {
      print('evet küçük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(21);
    }
  }
  //kullanıcılarımın parası var ama tipi değişken olabilir
  //Parası olan adamın o parametresi bir isim de olabilir veya değer de olabilir.
  //ya tr yazacak ya  da 15 vb diyebilir.
  //ekranda göster
  //print((user.moneyType as String) +
  //"A"); //as string yapısı string olarak ata anlamına gelmektedir.Fakat int olan verilerde çalışmaz bu.
  final newType = user.moneyType is String ? user.moneyType as String : "";
  print(newType);
  final bank1 = new Bank(50, '12');
  final bank2 = new Bank(40, '12');
  var result = bank1 + bank2;
  print(result);
}

//classları da private yapabiliriz.
class _User {
  final String name;
  int? age;
  dynamic moneyType;
  //Burada nullable yapısı kullanırsak age boş gelebileceğinden constructorın içine yazıp eşlememize gerek yok
  //Ama bunu yine göndermek isterse diye düşünüp opsiyonel bir biçimde yazmak daha doğru => opsiyonel yazım ={parametre}
  _User(this.name, {this.age});
  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank {
  final int money;
  final String id;
  Bank(this.money, this.id);

//Burada operatörleri kendimize göre değiştirebiliyoruz.  Bu işleme customize etmek diyoruz.
  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  String toString() {
    return super.toString() + 'demet';
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }
}
