import 'validation_element.dart';

class CheckForNull extends ValidationElement {
  CheckForNull({
    required ValidationElement? nextElement,
  }) : super(nextElement: nextElement);

  @override
  bool validate(String? value) {
    if (value == null) {
      return false;
    }

    if (nextElement == null) {
      return true;
    }

    return nextElement!.validate(value);
  }
}
