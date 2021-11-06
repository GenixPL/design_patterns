import 'package:meta/meta.dart';

import 'house.dart';

abstract class HouseBuilder {
  @protected
  String? walls;

  @protected
  String? rooftop;

  @protected
  String? doors;

  @protected
  String? pool;

  void buildWalls();

  void buildRooftop();

  void buildDoors();

  void buildPool();

  House? build();
}
