import 'db.dart';
import 'query.dart';

class DeleteQuery extends Query {
  DeleteQuery({
    required this.db,
    required this.value,
  });

  final Db db;
  final String value;

  @override
  void execute() {
    db.removeValue(value);
  }

  @override
  void undo() {
    db.addValue(value);
  }
}
