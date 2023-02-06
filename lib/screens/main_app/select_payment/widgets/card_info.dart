import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String info;

  const CardInfo({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
