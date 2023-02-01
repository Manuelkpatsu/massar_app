import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class ProfileItem extends Equatable {
  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  const ProfileItem({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  List<Object?> get props => [image, title, subTitle, onTap];
}
