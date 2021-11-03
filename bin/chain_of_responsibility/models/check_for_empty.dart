import 'validation_element.dart';

class CheckForEmpty extends ValidationElement {
  CheckForEmpty({
    required ValidationElement? nextElement,
  }) : super(nextElement: nextElement);

  @override
  bool validate(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    if (nextElement == null) {
      return true;
    }

    return nextElement!.validate(value);
  }
}
