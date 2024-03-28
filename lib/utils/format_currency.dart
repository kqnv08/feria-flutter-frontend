import 'package:intl/intl.dart';

formatCurrency(dynamic price) => NumberFormat.currency(
      locale: 'ar',
      symbol: '\$',
      decimalDigits: 2,
    ).format(price);
