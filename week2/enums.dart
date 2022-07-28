//ENUM : İçerisinde veri saklayan bir sınıftır. Verileri içine yazarız ve sınıf kullanır gibi erişiriz.
//*** enum ın içerisine girip fonksiyon yazılamaz.
void main() {
  final customerMouse = Mouses.a4;
  //a4 ün ismini almak istersek aşağıdaki gibi name yazmamız yeterli
  print(customerMouse.name);
  //a4 ün indexini almak istersen aşağıdaki gibi index yazmamız yeterli;
  print(customerMouse.index);

  //Enum olmadığı koşullarda if fonksiyonu içerisinde string değer kontrolü yapıyorduk.Örneğin
  if (customerMouse == 'a4') {}

  //Enum kullandığımızda ise kullanım daha kolaylaşıyor
  if (customerMouse.name == Mouses.a4) {}
}

enum Mouses { magic, apple, logitech, a4 }
