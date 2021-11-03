import 'validation_element.dart';

class CheckZipCode extends ValidationElement {
  CheckZipCode({
    required ValidationElement? nextElement,
  }) : super(nextElement: nextElement);

  static const List<String> _validZipCodes = <String>[
    '0000',
    '0001',
  ];

  @override
  bool validate(String? value) {
    if (!_validZipCodes.contains(value)) {
      return false;
    }

    if (nextElement == null) {
      return true;
    }

    return nextElement!.validate(value);
  }
}
