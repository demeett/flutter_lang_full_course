void main() {
  //Diğer bankadan bir modül aldık bunu ekleyip müşterinin parasını sorgular mısın? //Bu işlemi mixin ile yaptık.

  //CASCADE NOTATİON: Sınıflardaki propertyleri tek satırda değiştirebiliriz.
  final bank1 = new Bank(20, '2');
  bank1
    ..money += 10
    ..name = 'demet';
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;
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

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

//MIXIN yapısı constractor yazmadan içerisinde fonksiyonel işlemleri barındıran bir sınıftır.
//with ile başka sınıfa özellikleri aktarılır. İçerisinde değişken tanımlanıp constractora atanmaz.
mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
  }
}
