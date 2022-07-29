void main(List<String> args) {
  final user = User(data: 'a');
  final user2 = User(data: 1);
}

//T değişkeni IAdminden türesin onun türünden olsun diyoruz.
void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({required this.data});
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    // TODO: implement removeUser
  }
}
