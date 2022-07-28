void main() {
  Mouses custMouse = Mouses.a4;
  if (custMouse.isCheckName('a4')) print('a4');
}

enum Mouses { magic, a4, logitech, apple }

//Extensions dediğimiz yapı aslında enumun içerisine fonksiyon eklemek gibi düşünülebilir.
//Aşağıda this.name yazan kısım Mouses sınıfındaki name propertysini ifade eder.
extension MousesSelectExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
