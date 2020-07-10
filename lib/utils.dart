import 'package:intl/intl.dart';

extension DateFormating on DateTime {
  String toMyFormat() {
    return DateFormat("dd MMMM").format(this);
  }
}
