abstract class Individual {
  Individual({
    required this.strength,
    required this.intelligence,
  });

  double strength;
  double intelligence;


  void mutate();

  double fitness();

  Individual clone();
}
