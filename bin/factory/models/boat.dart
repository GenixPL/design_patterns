import 'transport.dart';

class Boat extends Transport {
  @override
  void moveTo(String destination) {
    print('Swimming to $destination');
  }

  @override
  int timeNeededToMoveTo(String destination) {
    return 2;
  }

  @override
  String whoAmI() {
    return 'Boat';
  }
}
