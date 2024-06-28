class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
    RegExp regExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$');
    return regExp.hasMatch(_password);
  }

  String get password => _password;

  set password(String password) {
    _password = password;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
