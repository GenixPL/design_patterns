import 'transport.dart';

class Bus extends Transport {
  Bus() : super(weight: 2500);

  @override
  void printCurrentSpeed() {
    print('Bus current speed: $currentSpeed');
  }
}
