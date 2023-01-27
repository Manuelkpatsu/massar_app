import 'package:flutter/material.dart';

class CircularButtonLoader extends StatelessWidget {
  final Color color;

  const CircularButtonLoader({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
        strokeWidth: 3,
      ),
    );
  }
}
