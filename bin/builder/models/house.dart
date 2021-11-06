class House {
  House({
    required this.walls,
    required this.rooftop,
    required this.doors,
    this.pool,
  });

  final String walls;
  final String rooftop;
  final String doors;
  final String? pool;

  @override
  String toString() {
    return '''
    walls: $walls
    rooftop: $rooftop
    doors: $doors
    pool: $pool
    ''';
  }
}
