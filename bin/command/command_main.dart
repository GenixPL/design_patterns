import 'models/db.dart';
import 'models/delete_query.dart';
import 'models/executioner.dart';
import 'models/insert_query.dart';

void main() {
  final Db db = Db();

  final InsertQuery insertQuery = InsertQuery(
    db: db,
    value: 'dupa',
  );

  final InsertQuery insertQuery2 = InsertQuery(
    db: db,
    value: 'rumpe',
  );

  final DeleteQuery deleteQuery = DeleteQuery(
    db: db,
    value: 'dupa',
  );

  final Executioner executioner = Executioner();

  executioner.perform(insertQuery);
  executioner.perform(insertQuery2);
  db.printValues();
  executioner.perform(deleteQuery);
  db.printValues();
  executioner.undo();
  db.printValues();
}
