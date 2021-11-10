class Db {
  final List<String> _values = [];

  List<String> getValues() {
    return _values;
  }

  void addValue(String value) {
    _values.add(value);
  }

  void removeValue(String value) {
    _values.remove(value);
  }

  void printValues() {
    print('Values: $_values');
  }
}
