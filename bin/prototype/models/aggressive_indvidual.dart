import 'dart:math';

import 'individual.dart';

class AggressiveIndividual extends Individual {
  AggressiveIndividual({
    required double strength,
    required double intelligence,
  }) : super(
          strength: strength,
          intelligence: intelligence,
        );

  @override
  void mutate() {
    final Random random = Random();
    if (random.nextBool()) {
      strength += random.nextDouble();
    } else {
      strength -= random.nextDouble();
    }
  }

  @override
  Individual clone() {
    return AggressiveIndividual(
      strength: strength,
      intelligence: intelligence,
    );
  }

  @override
  double fitness() {
    return strength + (intelligence * 0.5);
  }
}
