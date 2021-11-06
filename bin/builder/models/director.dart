import 'house.dart';
import 'house_builder.dart';

class Director {
  House? direct(HouseBuilder houseBuilder) {
    houseBuilder.buildWalls();
    houseBuilder.buildRooftop();
    houseBuilder.buildDoors();
    houseBuilder.buildPool();

    return houseBuilder.build();
  }
}
