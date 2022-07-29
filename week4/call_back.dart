void main(List<String> args) {
  final user = User(money: 5);
  print(user.money); //ile çağırmak zorundayız
  user.calculateMoney((data) {
    //burada yapılan işlemin sonucunu datada tutuyor.
    print(data);
    return data;
  });
}

//typedef callback methodunu isimlendirmeye yarıyor.
typedef CalculateCallBack = int Function(int data);

class User {
  int money;
  User({required this.money});

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
  }
}
