import 'models/check_for_empty.dart';
import 'models/check_for_null.dart';
import 'models/check_zip_code.dart';

void main() {
  // Check zip codes.

  final last = CheckZipCode(nextElement: null);
  final second = CheckForEmpty(nextElement: last);
  final first = CheckForNull(nextElement: second);

  print('isValid zip code `0000`: ${first.validate('0000')}');

  // Completely different place checking for name.

  final last2 = CheckForEmpty(nextElement: null);
  final first2 = CheckForNull(nextElement: last2);

  print('isValid name `null`: ${first2.validate(null)}');
}
