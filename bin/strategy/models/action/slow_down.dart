import 'speed_action.dart';

class SlowDown extends SpeedAction {
  @override
  double getNewSpeed({
    required double currentSpeed,
    required double weight,
  }) {
    return currentSpeed - (unitChange / weight);
  }
}
