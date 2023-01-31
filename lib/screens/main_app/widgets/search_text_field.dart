import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.50,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        hintText: 'Search product here',
        hintStyle: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          height: 1.45,
          color: CustomColor.hintTextColor,
        ),
        suffixIcon: const Icon(
          Icons.search,
          color: CustomColor.iconColor,
          size: 20,
        ),
      ),
    );
  }
}
