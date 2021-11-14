import 'models/auth_service.dart';
import 'models/db_service.dart';
import 'models/facade.dart';

void main() {
  // WITHOUT
  final AuthService authService = AuthService();
  final DbService dbService = DbService();
  final Token? token = authService.authenticate('rumpe@gmail.com', '1234');
  final String? data1 = dbService.getData(token: token);
  print('Data: $data1');
  final bool modifyResult1 = dbService.modify(command: 'set username = Moron', token: token);
  print('Result: $modifyResult1');

  print('');

  // WITH
  final Facade facade = Facade();
  facade.authenticate('rumpe@gmail.com', '1234');
  print('Data: ${facade.getData()}');
  final bool modifyResult2 = facade.setUsername('Moron');
  print('Result: $modifyResult2');

}