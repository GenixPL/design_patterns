import 'package:meta/meta.dart';

abstract class BuyingProcess {
  @nonVirtual
  void execute() {
    pay();
    assemble();
    deliver();
    enjoy();
  }

  @protected
  void pay() {
    print('Getting money...');
  }

  @protected
  void assemble();

  @protected
  void deliver() {
    print('Delivering the object...');
  }

  @protected
  void enjoy();
}
