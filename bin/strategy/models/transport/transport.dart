import '../action/speed_action.dart';

abstract class Transport {
  Transport({
    required this.weight,
  });

  final double weight;
  double currentSpeed = 0.0;
  SpeedAction? currentAction;

  void printCurrentSpeed();
}
