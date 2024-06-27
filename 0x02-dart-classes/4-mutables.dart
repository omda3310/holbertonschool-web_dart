class Password {
  String password = '';
	Password({
		required String password,
	}) {
      this._password = password;
    }

	String get password {
		return _password;
	}

	void set password(String text) {
		this._password = text;
	}

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return false;
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return false;
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
