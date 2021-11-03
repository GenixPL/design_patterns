import 'money_db.dart';

class MoneyDbProxy {
  MoneyDb? _moneyDb;

  void setMoney(String userId, double value) {
    // Only ids starting with upper case letters have permissions to do this.
    if (userId[0] != userId[0].toUpperCase()) {
      throw 'No Permissions!';
    }

    _moneyDb ??= MoneyDb();
    _moneyDb!.executeCommand('set $value');
  }
}