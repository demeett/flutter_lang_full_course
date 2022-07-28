import 'user.dart';

void main() {
  User user = new User('', 10, id: '12');
  bool result = user.isEmptyId;
  print(result);
  //Müşteri idsi '12' olana para yatır.
  if (user.isSpecialUser('12')) {
    user.money += 500;
    print('${user.money} tl paranız var hesabınızda ');
  }
  print(user.toString());
}

//class 2
class User2 {
  final String name;
  final int money;
  final int? age;
  final String? city;
  User2(this.name, this.money, {this.age, this.city}) {}
}
