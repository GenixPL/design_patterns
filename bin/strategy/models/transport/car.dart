import 'transport.dart';

class Car extends Transport {
  Car() : super(weight: 1500);

  @override
  void printCurrentSpeed() {
    print('Car current speed: $currentSpeed');
  }
}
