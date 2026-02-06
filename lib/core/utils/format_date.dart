import 'package:intl/intl.dart';

String formatDateBydMMMYYY(DateTime datetime) {
  return DateFormat("d MMM, yyyy").format(datetime);
}
