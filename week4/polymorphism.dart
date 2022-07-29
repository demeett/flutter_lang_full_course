void main(List<String> args) {
  //Burada bir string ataması yapıyor gibi düşünebiliriz. mesela string name='demet' yazıp
  //bir sonraki satırda name='haydar' olarak değişken ataması yapıp kullanabiliyoruz.Int
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;
  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  String get name => 'demet';

  void sayName() {
    print('merhaba hoşgeldiniz  $name');
  }
}

class English implements IUser {
  String get name => 'jhon';

  void sayName() {
    print('hello welcome to home $name');
  }
}
