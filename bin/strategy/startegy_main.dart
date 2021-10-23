import 'models/action/slow_down.dart';
import 'models/action/speed_up.dart';
import 'models/transport/bus.dart';
import 'models/transport/car.dart';
import 'models/transport/transport.dart';

void strategyMain() {
  final Transport car = Car();
  final Transport bus = Bus();

  car.printCurrentSpeed();
  bus.printCurrentSpeed();

  print('');
  print('Speed up...');

  car.currentAction = SpeedUp();
  bus.currentAction = SpeedUp();

  for (int i = 0; i < 10; i++) {
    car.currentSpeed = car.currentAction!.getNewSpeed(currentSpeed: car.currentSpeed, weight: car.weight);
    bus.currentSpeed = bus.currentAction!.getNewSpeed(currentSpeed: bus.currentSpeed, weight: bus.weight);

    car.printCurrentSpeed();
    bus.printCurrentSpeed();
  }

  print('');
  print('Slow down...');

  car.currentAction = SlowDown();
  bus.currentAction = SlowDown();

  for (int i = 0; i < 10; i++) {
    car.currentSpeed = car.currentAction!.getNewSpeed(currentSpeed: car.currentSpeed, weight: car.weight);
    bus.currentSpeed = bus.currentAction!.getNewSpeed(currentSpeed: bus.currentSpeed, weight: bus.weight);

    car.printCurrentSpeed();
    bus.printCurrentSpeed();
  }
}
