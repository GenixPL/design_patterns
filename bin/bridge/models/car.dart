import 'tire.dart';

abstract class Car {
  Car({
    required this.tire,
  });

  final Tire tire;
}
