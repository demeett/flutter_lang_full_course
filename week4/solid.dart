void main(List<String> args) {
  final user = UserLocalization(UserManager(name: 'demet'));
  user.updateNameandLocalization();

  //Liskov için:Burada veritabanını değiştirmek istediğimde direk değişkeni diğerine atamam yeterli .
  IDatabase database = SQL();
  database = Mongo();
  database.write();
}

//1*****Single Responsibility Principle:Her method sadece tek bir iş yapar.
class UserManager {
  String name;
  UserManager({required this.name});

  String changeUserName(String name) {
    return this.name = name;
  }
}
//Bir class kendi amacına hizmet etmelidir. UserManager yazıyosak kullanıcı işlemlerini yapmalıdır.
//Eğer usermanagerla ilgili konunun dışında bir şey yapmak istersek başka yeni bir sınıf tanımlarız ve onun içinde işlemleri yaparız.

class UserLocalization {
  final UserManager userManager;

  UserLocalization(this.userManager);

  void updateNameandLocalization() {
    final value = userManager.changeUserName('name');
    changeLocalization(value);
  }

  void changeLocalization(String name) {
    print(name);
  }
}
//2*****Open/Closed Principle: Core classlar kendi içinde değiştirilememeli , fakat alt sınıflarla daha da büyüyebilmeli.
//Aşağıda Product sınıfını extend eden ProductCategories sınıfı PRoductın temel özelliklerini alıp üstüne ekleme yapmış, buna open closed denir.

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);
  final String Category = "";
}

//3****Liskov ‘s Substitution Principle: Yerine geçme prensibi kalıtım alarak türeyen
//sınıfların kalıtım aldıkları nesnenin tüm özellikleri kullanmalı ve sonrasında kendi
//özelliklerini barındırmasını hedefleyen bir prensiptir eğer nesne kalıtım aldığı
//objenin tüm özelliklerini kullanmaz ise ortaya gereksiz kod yığınları oluşur.
abstract class IDatabase {
  void write() {}
}

class SQL extends IDatabase {
  void write() {}
}

class Mongo extends IDatabase {
  void write();
}

//4****Single Responsibility Principle : Her bir method sadece kendisine verilen işi yapar aynı anda birden fazla modeli update etmez
abstract class IUserOperation with IUSerLocation, ILanguage {
  void write();
  void read();
  void delete();
  //void locationChange(); locationchange burda olmamalı çünkü buranun konusuna dahil değil
  //alt classtan kalıtım yoluyla bu özelliği almamızz daha mantıklı
  //void locationChange();
  //Operasyonları parçaladım
}

abstract class IUSerLocation {
  void locationChange();
}

abstract class ILanguage {
  void languageChange();
}

//5******D ependency Inversion Principle:Alt sınıflarda yapılan değişiklikler üst sınıfları etkilememelidir.
abstract class ICameraManager {
  void readQR();
  //Bu classın içerisinde başka classtan türeyen bir değişken olmamalıdır. çünkü alt sınıf değiştiğinde buradaki üst sınıf da etkilenecek.
  //final IphoneCamera camera; yazmamalıyım
}

//Eğer IphoneCamerayı kullanacaksam yeni bir class tanımlarım onun içinde yazarım
class DeviceManager extends ICameraManager {
  final IphoneCamera iphoneCamera;

  DeviceManager(this.iphoneCamera);
  void readQR() {}
}

class IphoneCamera extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
