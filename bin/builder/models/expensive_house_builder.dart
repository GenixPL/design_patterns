import 'house.dart';
import 'house_builder.dart';

class ExpensiveHouseBuilder extends HouseBuilder {
  @override
  void buildDoors() {
    doors = 'Steel doors';
  }

  @override
  void buildPool() {
    pool = 'Huge heated pool';
  }

  @override
  void buildRooftop() {
    rooftop = 'Glass rooftop';
  }

  @override
  void buildWalls() {
    walls = 'Concrete walls';
  }

  @override
  House? build() {
    if (walls == null) {
      return null;
    }

    if (rooftop == null) {
      return null;
    }

    if (doors == null) {
      return null;
    }

    if (pool == null) {
      return null;
    }

    return House(
      walls: walls!,
      rooftop: rooftop!,
      doors: doors!,
      pool: pool,
    );
  }
}
