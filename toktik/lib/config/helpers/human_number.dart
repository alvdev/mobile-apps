import 'package:intl/intl.dart';

class HumanNumber {
  static String compact(double number) {
    return NumberFormat.compact().format(number);
  }
}
