import 'bicycle_interface.dart';
import 'car.dart';

class CarAdapter extends BicycleInterface {
  CarAdapter(this.car);

  final Car car;

  @override
  void addDriver() {
    car.addDriver();
  }

  @override
  void pedal() {
    car.driveForward();
  }
}
