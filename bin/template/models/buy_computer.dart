import 'buying_process.dart';

class BuyComputer extends BuyingProcess {
  @override
  void assemble() {
    print('Assembling computer...');
  }

  @override
  void enjoy() {
    print('Playing games...');
  }
}
