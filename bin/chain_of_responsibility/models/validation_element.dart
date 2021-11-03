abstract class ValidationElement {
  ValidationElement({
    required this.nextElement,
  });

  final ValidationElement? nextElement;

  /// Performs the validation action.
  ///
  /// Returns `false` if the [value] is invalid.
  /// Returns `true` if the [value] is valid.
  bool validate(String? value);
}
