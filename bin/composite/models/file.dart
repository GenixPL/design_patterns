import 'disc_thing.dart';

class File extends DiscThing {
  File({
    required this.contentSize,
  });

  final double contentSize;

  @override
  double get size {
    return contentSize;
  }
}
