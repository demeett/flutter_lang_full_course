class User2 {
  late final String name;
  int _money;
  int get money => _money;
  set money(int? money) {
    _money = money == null ? 0 : money; // shortif yapısı
  }

  late final int? age;
  late final String? city;
  User2(this.name, this._money, {this.age, this.city}) {}
}
