import 'models/bicycle.dart';
import 'models/bicycle_interface.dart';
import 'models/car.dart';
import 'models/car_adapter.dart';

void main() {
  final Bicycle bicycle = Bicycle();
  final Car car = Car();
  final CarAdapter carAdapter = CarAdapter(car);

  final List<BicycleInterface> magic = [bicycle, carAdapter];

  for (BicycleInterface sth in magic) {
    sth.addDriver();
    sth.pedal();
  }
}
