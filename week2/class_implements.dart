void main() {}

abstract class IStudent {
  final String name;
  final String age;
  IStudent(this.name, this.age);

  void saySomeThing() {
    print("I tel you when you do this ");
  }
}

//implement yapısı classı birebir kopyalamak anlamına gelir.Yani başka bir classı implement ettiğimizde
//üst classın özelliklerini fonksiyonlarını birebir almak zorundadır

class Student implements IStudent {
  final String name;
  final String age;
  Student(this.name, this.age);
  void saySomeThing() {}
}
