import 'package:equatable/equatable.dart';

enum PaymentGateWay {
  masterCard(id: 'Master Card'),
  paypal(id: 'Paypal'),
  visaCard(id: 'Visa Card');

  final String id;

  const PaymentGateWay({required this.id});
}

class Payment extends Equatable {
  final int id;
  final PaymentGateWay paymentGateWay;
  final String name;
  final int number;

  const Payment({
    required this.id,
    required this.paymentGateWay,
    required this.name,
    required this.number,
  });

  @override
  List<Object?> get props => [id, paymentGateWay, name, number];
}
