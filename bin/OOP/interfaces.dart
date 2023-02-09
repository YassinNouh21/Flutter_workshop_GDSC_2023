// To Create Interface
abstract class User {
  late String _userType;
  set userType(String value) => _userType = value;
  String get userType => _userType;
  void createAccount();
  void loginToAccount();
  void logoutFromAccount();
  void displayInfo() {
    print('display info');
  }
}

abstract class AuthenticationUser {
  bool checkIsAuth();
}

class Admin implements User, AuthenticationUser {
  @override
  late String _userType;

  @override
  late String userType;

  @override
  void createAccount() {
    // TODO: implement createAccount
  }

  @override
  void loginToAccount() {
    // TODO: implement loginToAccount
  }

  @override
  void logoutFromAccount() {
    // TODO: implement logoutFromAccount
  }

  @override
  void displayInfo() {
    // TODO: implement displayInfo
  }

  @override
  bool checkIsAuth() {
    // TODO: implement checkIsAuth
    throw UnimplementedError();
  }
}
