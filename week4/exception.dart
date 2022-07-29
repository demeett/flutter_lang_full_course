void main(List<String> args) {
  String? userName = "a";

  if (userName.length > 2) {
    print('a');
  } else {
    throw UserNameException();
  }

  // try {
  //   if (userName!.length > 2) {}
  // } catch (e) {}
}

//eğer istersek kendi exceptionlarımızı yazabiliriz.
//exception extend edilmeye kapalıdır.
class UserNameException implements Exception {
  String toString() {
    return 'username 2 den küçük girmişsin';
  }
}
