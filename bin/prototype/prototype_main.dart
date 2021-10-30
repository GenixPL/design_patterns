import 'models/aggressive_indvidual.dart';
import 'models/individual.dart';
import 'models/social_individual.dart';

void main() {
  final List<Individual> individuals = [
    AggressiveIndividual(strength: 1.0, intelligence: 1.0),
    SocialIndividual(strength: 1.0, intelligence: 1.0),
    AggressiveIndividual(strength: 1.0, intelligence: 1.0),
    SocialIndividual(strength: 1.0, intelligence: 1.0),
  ];

  for (int i = 0; i < 10; i++) {
    individuals.sortByFitness();

    individuals.removeAt(3);
    individuals.removeAt(2);

    final Individual new1 = individuals[0].clone();
    new1.mutate();
    individuals.add(new1);

    final Individual new2 = individuals[1].clone();
    new2.mutate();
    individuals.add(new2);

    print('\nGeneration $i:');
    individuals.printGeneration();
  }

  print('\nFinal individuals:');
  individuals.printGeneration();
}


extension IndividualListExtensions on List<Individual> {
  void sortByFitness() {
    sort((Individual a, Individual b) {
      return a.fitness().compareTo(b.fitness());
    });
  }

  void printGeneration() {
    for (Individual individual in this) {
      print('${individual.runtimeType} s: ${individual.strength} i: ${individual.intelligence}');
    }
  }
}