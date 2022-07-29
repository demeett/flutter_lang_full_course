void main(List<String> args) {
  //sync:
  //--Stream: Bir işlemimiz var ve anlık olarak değişebilir.Bunu da dinlemek istiyoruz.
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = addDataBankMoney(3, 500);
  bankMoneys.listen((event) {
    print(event);
  });
}

Stream<int> addDataBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5; //veriyi döndürmek istersek yield kulanıyoruz.
  }
}
