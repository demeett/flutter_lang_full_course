Future<void> main(List<String> args) async {
  print('D');

  await Future.delayed(Duration(
      seconds:
          2)); //burada yapının çalışmasını istiyorsak fonksiyona futura yazarrız atmammız gerek
  print('ddd');

//EventLoop yapısı gereği öncek main deki işlemler biter sonra futuredaki işlemlere geçer.Örnek;

  print('hello 1');

  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('hello4');
  });
}
//Önce main threadler biter sonra async threadler biter.
//bir servise istek attık , büyüük bi işlem ve bu işlemi beklemek istemiyoruz.
//orda işlem devam ederken başka işlemlerimi yapmak istiyorum . Bu yüzden async kullanıyoruz.
//async diyince future kullanılcak.


