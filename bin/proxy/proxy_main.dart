import 'models/money_db_proxy.dart';

void main() {
  try {
    MoneyDbProxy().setMoney('ddd', 1000);
  } catch (e) {
    print(e);
  }

  MoneyDbProxy().setMoney('Ddd', 1000);
}
