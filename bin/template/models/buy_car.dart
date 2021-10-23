import 'buying_process.dart';

class BuyCar extends BuyingProcess {
  @override
  void assemble() {
    print('Assembling car...');
  }

  @override
  void enjoy() {
    print('Driving...');
  }
}
