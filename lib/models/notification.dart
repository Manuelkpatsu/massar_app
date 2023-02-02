import 'package:equatable/equatable.dart';

enum OrderStatus { success, arrived, onWay }

class NotificationItem extends Equatable {
  final int id;
  final OrderStatus status;
  final String message;
  final DateTime date;

  const NotificationItem({
    required this.id,
    required this.status,
    required this.message,
    required this.date,
  });

  @override
  List<Object?> get props => [id, status, message, date];
}
