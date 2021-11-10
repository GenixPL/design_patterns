import 'query.dart';

class Executioner {
  final List<Query> _queries = [];

  void perform(Query query) {
    query.execute();
    _queries.add(query);
  }

  void undo() {
    _queries.removeLast().undo();
  }
}
