import '../models/airplane.dart';
import '../models/boat.dart';
import '../models/bus.dart';
import '../models/transport.dart';

enum TransportType {
  airplane,
  bus,
  boat,
}

class TransportFactory {
  Transport getTransportOfType(TransportType transportType) {
    switch (transportType) {
      case TransportType.airplane:
        return Airplane();

      case TransportType.bus:
        return Bus();

      case TransportType.boat:
        return Boat();
    }
  }

  Transport getFastestTransportTo(String destination) {
    final List<Transport> possibleTransports = <Transport>[
      Airplane(),
      Bus(),
      Boat(),
    ];

    possibleTransports.sort((Transport a, Transport b) {
      return a.timeNeededToMoveTo(destination).compareTo(b.timeNeededToMoveTo(destination));
    });

    return possibleTransports.first;
  }
}
