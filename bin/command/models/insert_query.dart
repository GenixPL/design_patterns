import 'db.dart';
import 'query.dart';

class InsertQuery extends Query {
  InsertQuery({
    required this.db,
    required this.value,
  });

  final Db db;
  final String value;

  @override
  void execute() {
    db.addValue(value);
  }

  @override
  void undo() {
    db.removeValue(value);
  }
}
