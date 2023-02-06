import 'package:equatable/equatable.dart';

class OrderInfo extends Equatable {
  final int id;
  final DateTime date;
  final String deliveryMessage;
  final bool isCompleted;

  const OrderInfo({
    required this.id,
    required this.date,
    required this.deliveryMessage,
    required this.isCompleted,
  });

  @override
  List<Object?> get props => [id, date, deliveryMessage, isCompleted];
}
