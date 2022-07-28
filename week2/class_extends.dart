void main() {
  SpecialUser spUser = new SpecialUser('demet', 50, 22, 6);
  print(spUser.calculateMoney);
  print(spUser.money);
}

//Soyut bir sınıf tanımlayıp hepsinin ortak özelliklerini bir arada toplayıp fazla kod yazmaktan kurtuluruz.
abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('ahmet- $money paranız vardır');
  }
}

//müşterilerin paralarını görmelerini istiyorum banka ismimle beraber
class User extends IUser {
  User(String name, int money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;
  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final int bankingCode;
  final int discountCode;
  final int money;
  SpecialUser(String name, this.money, this.bankingCode, this.discountCode)
      : super(name, money);
//Aşağıdaki satır arrowfunction olarak ifade ediliyor. Tek bir değer döndürmek istersek ve tek bir işlem yapacaksak bunu kullanırız.
//"~" işareti virgüllü sayıları yuvarlamaya yarar.
//calculateMoney dediğimiz bir değişken oldu aslında money değişmedi . değişen değer calcuteMoney' e atandı.
  int get calculateMoney => money - (money ~/ discountCode);
}
