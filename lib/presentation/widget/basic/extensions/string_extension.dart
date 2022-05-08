import 'package:dartx/dartx.dart';

extension StringExtension on String {
  bool isQueriedBy(String query) {
    final querySubstrings = query.trim().toLowerCase().split(RegExp(r'\s+'));
    final lowerCase = toLowerCase();
    return querySubstrings.all((querySubstring) {
      return lowerCase.contains(querySubstring);
    });
  }

  bool get isValidEmail => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);
}
