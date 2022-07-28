void main() {
  //müsterinin parası var mı yok mu kontrol et
  //sürekli tekraralayan işlemleri methoda yaz..
  final int customerMoney = 0;
  final int cstMoney2 = 5;
  print(controlUserMoney(customerMoney));
  print(controlUserMoney(cstMoney2));

  //50 tl param var dolara çevir dolar kurunu söylemezsem her zaman 13 olarak al söylersem benim değerimi al
  //<<FONKSİYON İÇİNDE DEFAULT DEĞER ATAMASI: {İNT DEĞER=0}>>//  fonskiyonu çağıracağımz yerde ise default değerin adını yazmamız gerekli.
  //dolarIndex:10 gibi
  ///////NOT: DART DİLİNDE TANIMLANMAYAN HER DEĞER NULL OLARAK DÖNER . C# DA İNT TANIMLANMADIĞINDA 0 OLARAK DÖNER AMA DARTTA NULL DÖNER .

  int result = convertToDolar(money: 100, dolarIndex: 15);
  print(result);
}

String controlUserMoney(int customerMoney) {
  if (customerMoney > 0) {
    return 'parası 0 dan büyük';
  } else {
    return 'Parası O dan küçük ';
  }
}

///<<<Default değer atamalarında required olarak atama yapabiliriz. Bu sayede değişken boş geçilemez ve fonksiyonu çağırdığımız yerde değişkenin
///adını yazmak zorundayız. money:100 gibi
int convertToDolar({required int money, int dolarIndex = 13}) {
  int converter = money ~/ dolarIndex;
  return converter;
}

//string dönüşlü fonksiyonlar
String sayHello(String name) {
  return ('hello $name');
}
