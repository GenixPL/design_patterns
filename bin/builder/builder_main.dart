import 'models/cheap_house_builder.dart';
import 'models/director.dart';
import 'models/expensive_house_builder.dart';
import 'models/house.dart';

void main() {
  final Director director = Director();

  final House? cheapHouse = director.direct(CheapHouseBuilder());
  final House? expensiveHouse = director.direct(ExpensiveHouseBuilder());

  print('Cheap house: \n$cheapHouse');
  print('Expensive house: \n$expensiveHouse');
}
