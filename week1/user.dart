//class 1
//id değişkenine sadece bu sınıf içerisinden erişilebilsin
import 'dart:ffi';

class User {
  late final String name;
  late int money;
  late final int? age;
  late final String? city;
  late final String _id;
  //Artık id görünmez oldu o yüzden aşağıda tanımlarken this.id yazamayız
  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
  }

// başka bir classta atanan id değeri ile buradaki değer eşit mi onu kontrol ediyor.
  bool isSpecialUser(String id) {
    return _id == id;
  }

  //id değerinin boş olup olmadığını kontrol etme
  //Bu yapıya error function denir
  bool get isEmptyId => _id.isEmpty;
}
