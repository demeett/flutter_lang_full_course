void main() {
  ///Map bir sözlük yapısıdır.
  ///Key ve value değerlerinden oluşur .Mesela Adı: Ahmet , Parası:2000 gibi
  ///
  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};
  //müşteri ahmetin ne kadar parası var?
  print('ahmetin parası: ${users['ahmet']}');

  //Eğer tüm müşterilere sırasıyla erişmek istersek:

  for (var item in users.keys) {
    print('${item}- ${users[item]}');
  }

  ////ElementAt key ve value ların içinde indexli bir şekilde gezmeye yarıyor.
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)}');
  }

  //Benim bankam var müşterilerimin birden fazla hesabı olabilir
  //ahmet bey 3 hesabı var sırasıyla 100,300,200
  //mehmet bey 2 hesap 30,50
  //veli bey: 1 hesap 30
  //Adamların hesapları kontrol et herhangi bir hesapta 150 tlden fazla olan varsa krediniz hazır de
  Map<String, List<int>> vbBank = {
    'ahmet': [100, 300, 200],
  };
  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [30];

  for (var items in vbBank.keys) {
    for (var item in vbBank[items]!) {
      if (item > 150) {
        print('${items} ın parası ${item}');
        /////BOŞ RETURN YAZMAK BÜTÜN PROGRAMI SONLANDIRIR. EĞER FONKSİYONU SONLANDIRMAK İSTİYORSAN BREAK YAZMALISIN .
        //return;
        break;
      }
    }
  }
  for (var values in vbBank.keys) {
    int total = 0;
    for (var value in vbBank[values]!) {
      //Sonundaki ünlem işareti müşterinin hesaplarını ifade ediyor
      total += value.toInt();
    }
    print('PAralar ${total}');
  }
}
