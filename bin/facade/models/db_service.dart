import 'auth_service.dart';

class DbService {
  String? getData({
    required Token? token,
  }) {
    if (token == null) {
      return null;
    }

    return 'Data';
  }

  bool modify({
    required String command,
    required Token? token,
  }) {
    if (token == null) {
      return false;
    }

    print('Modifying db...');
    return true;
  }
}
