import 'models/file.dart';
import 'models/folder.dart';

void main() {
  final Folder mainFolder = Folder();

  final Folder subFolder = Folder();
  subFolder.things.add(File(contentSize: 1.1));
  subFolder.things.add(File(contentSize: 1.5));
  subFolder.things.add(File(contentSize: 0.8));

  mainFolder.things.add(subFolder);
  mainFolder.things.add(File(contentSize: 2.22));

  print('Total size: ${mainFolder.size}');
}
