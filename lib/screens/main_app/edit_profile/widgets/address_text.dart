import 'package:flutter/material.dart';

class AddressText extends StatelessWidget {
  const AddressText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Text(
        'Address',
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          height: 1.54,
        ),
      ),
    );
  }
}
