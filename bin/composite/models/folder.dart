import 'disc_thing.dart';

class Folder extends DiscThing {
  final List<DiscThing> things = [];

  @override
  double get size {
    double size = 0.0;

    for (DiscThing thing in things) {
      size += thing.size;
    }

    // Folder's size.
    size += 0.5;

    return size;
  }
}
