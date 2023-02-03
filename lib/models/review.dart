import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final int id;
  final String profilePhoto;
  final String profileName;
  final double rating;
  final String message;
  final DateTime createdAt;

  const Review({
    required this.id,
    required this.profilePhoto,
    required this.profileName,
    required this.rating,
    required this.message,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        profilePhoto,
        profileName,
        rating,
        message,
        createdAt,
      ];
}
