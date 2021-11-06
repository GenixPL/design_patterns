import 'house.dart';
import 'house_builder.dart';

class CheapHouseBuilder extends HouseBuilder {
  @override
  void buildDoors() {
    doors = 'Cheap wooden doors';
  }

  @override
  void buildPool() {
    // No pool.
  }

  @override
  void buildRooftop() {
    rooftop = 'Cheap wooden rooftop';
  }

  @override
  void buildWalls() {
    walls = 'Cheap wooden walls';
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

    return House(
      walls: walls!,
      rooftop: rooftop!,
      doors: doors!,
    );
  }
}
