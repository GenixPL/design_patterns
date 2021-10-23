abstract class SpeedAction {
  final double unitChange = 10;

  double getNewSpeed({
    required double currentSpeed,
    required double weight,
  });
}
