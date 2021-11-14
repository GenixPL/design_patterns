import 'auth_service.dart';
import 'db_service.dart';

class Facade {
  final AuthService authService = AuthService();
  final DbService dbService = DbService();

  Token? token;

  bool authenticate(String email, String password) {
    token = authService.authenticate(email, password);
    return token != null;
  }

  String? getData() {
    if (token == null) {
      print('Auth needed!');
      return null;
    }

    return dbService.getData(token: token);
  }

  bool setUsername(String name) {
    if (token == null) {
      print('Auth needed!');
      return false;
    }

    return dbService.modify(
      command: 'set username = $name',
      token: token,
    );
  }
}
