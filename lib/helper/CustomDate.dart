import 'package:intl/intl.dart';

String getCurrentFormattedDate() {
  return DateFormat('yyyy, MMM d, yyyy').format(DateTime.now());
}
