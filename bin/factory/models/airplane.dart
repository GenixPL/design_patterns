import 'transport.dart';

class Airplane extends Transport {
  @override
  void moveTo(String destination) {
    print('Flying to $destination');
  }

  @override
  int timeNeededToMoveTo(String destination) {
    return 1;
  }

  @override
  String whoAmI() {
    return 'Airplane';
  }
}
