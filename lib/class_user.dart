class User {
  String username;
  String password;

  User(this.username, this.password) {
    if (username.isEmpty) {
      throw ArgumentError('Username tidak boleh kosong!');
    }

    if (username.length < 4) {
      throw ArgumentError('Username minimal 4 karakter!');
    }

    if (password.isEmpty) {
      throw ArgumentError('Password tidak boleh kosong!');
    }

    if (password.length < 6) {
      throw ArgumentError('Password minimal');
    }
  }
}
