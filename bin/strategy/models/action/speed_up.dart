import 'speed_action.dart';

class SpeedUp extends SpeedAction {
  @override
  double getNewSpeed({
    required double currentSpeed,
    required double weight,
  }) {
    return currentSpeed + (unitChange / weight);
  }
}
