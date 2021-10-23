import 'models/buy_car.dart';
import 'models/buy_computer.dart';
import 'models/buying_process.dart';

void templateMain() {
  print('Buying computer...');
  final BuyingProcess buyComputer = BuyComputer();
  buyComputer.execute();

  print('');

  print('Buying car...');
  final BuyingProcess buyCar = BuyCar();
  buyCar.execute();
}
