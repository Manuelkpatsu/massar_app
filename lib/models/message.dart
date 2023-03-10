import 'package:equatable/equatable.dart';
import 'package:massar_app/models/product.dart';

class ChatMessage extends Equatable {
  final int id;
  final Store store;
  final int numberOfMessages;
  final DateTime lastMessageDate;
  final String currentMessage;

  const ChatMessage({
    required this.id,
    required this.store,
    required this.numberOfMessages,
    required this.lastMessageDate,
    required this.currentMessage,
  });

  @override
  List<Object?> get props => [
        id,
        store,
        numberOfMessages,
        lastMessageDate,
        currentMessage,
      ];
}
