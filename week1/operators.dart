void main() {
  String name = "Demet";
  if (name == 'Demet') {}
  const int appleMoney = 20;
  const double discount = 2.5;
  int myMoney = 30;

  // <<<< "~" işareti sayıları yuvarlamaya yarıyor >>>>
  myMoney = myMoney - (appleMoney ~/ discount);
  print(myMoney);

  //<<<<< isEven fonksiyonu çift sayı mı onu gösteriyor.>>>>>////

  print(myMoney.isEven);

//<<<<< isOdd fonksiyonu tek sayı mı onu gösteriyor.>>>>>////
  print(myMoney.isOdd);

  ////program debug modundayken hata ayıklama konsolunun altına gelip mevcut değerlerimizi görebiliriz veya üzerinde işlemler yapabiliriz
  ///izleme ekranından istediğimiz ifadeyi yazıp onu dinleyebiliriz.
}
