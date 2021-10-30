import 'dart:math';

import 'individual.dart';

class SocialIndividual extends Individual {
  SocialIndividual({
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
      intelligence += random.nextDouble();
    } else {
      intelligence -= random.nextDouble();
    }
  }

  @override
  Individual clone() {
    return SocialIndividual(
      strength: strength,
      intelligence: intelligence,
    );
  }

  @override
  double fitness() {
    return (strength * 0.5) + intelligence;
  }
}
