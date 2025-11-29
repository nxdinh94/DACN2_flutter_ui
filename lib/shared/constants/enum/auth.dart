enum AuthType { register, login, logout }

extension AuthTypeExtension on AuthType {
  String getName() {
    switch (this) {
      case AuthType.register:
        return 'REGISTER';
      case AuthType.login:
        return 'LOGIN';
      case AuthType.logout:
        return 'LOGOUT';
    }
  }
}