import 'transport.dart';

class Bus extends Transport {
  @override
  void moveTo(String destination) {
    print('Driving to $destination');
  }

  @override
  int timeNeededToMoveTo(String destination) {
    return 5;
  }

  @override
  String whoAmI() {
    return 'Bus';
  }
}
