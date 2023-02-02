import 'package:flutter/material.dart';
import 'package:massar_app/screens/widgets/profile_photo.dart';

class AccountPhoto extends StatelessWidget {
  const AccountPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      top: -45,
      child: ProfilePhoto(
        photo: 'assets/images/profile-photo.png',
        size: 90,
      ),
    );
  }
}
