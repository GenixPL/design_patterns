import 'bicycle_interface.dart';

class Bicycle extends BicycleInterface {
  @override
  void addDriver() {
    print('Driver seated on the saddle.');
  }

  @override
  void pedal() {
    print('Going forward');
  }
}
