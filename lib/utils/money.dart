import 'package:intl/intl.dart';

class Money {
  static String fromDouble({required double value, int decimalDigits = 2}) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '₵',
      decimalDigits: decimalDigits,
    ).format(value);
  }

  static double getTotalAmount({required double discount, required double amount}) {
    return amount - (amount * discount);
  }

  static double getTotalAmountWithFee({
    required double discount,
    required double amount,
    required double serviceFee,
  }) {
    return amount - (amount * discount) + (amount * serviceFee);
  }

  static String discount({required double discount}) {
    final discountPercentage = discount * 100;
    return '$discountPercentage %';
  }
}
