import 'helpers/transport_factory.dart';
import 'models/transport.dart';

void factoryMain() {
  final TransportFactory transportFactory = TransportFactory();

  final Transport transportOfChoice = transportFactory.getTransportOfType(TransportType.boat);
  print('Today\'s transport of choice: ${transportOfChoice.whoAmI()}');

  final Transport fastestTransport = transportFactory.getFastestTransportTo('Hell');
  print('Fastest transport: ${fastestTransport.whoAmI()}');
}
