import 'package:flutter/material.dart';

import 'circular_button_loader.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;
  final bool isLoading;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 50,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(width!, height!),
      ),
      child: isLoading ? const CircularButtonLoader() : widget,
    );
  }
}
