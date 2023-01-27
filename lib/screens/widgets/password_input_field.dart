import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_color.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String labelText;
  final bool? obscureText;
  final VoidCallback? toggle;
  final void Function(String)? onChanged;

  const PasswordInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.labelText,
    this.obscureText,
    this.toggle,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      cursorColor: Colors.black,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        height: 1.54,
      ),
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.textFieldBorderColor, width: 0.5),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CustomColor.textFieldBorderColor, width: 0.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 0.5),
        ),
        label: Text(labelText),
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: CustomColor.labelColor,
          height: 1.50,
        ),
        suffixIcon: IconButton(
          icon: obscureText!
              ? const Icon(Icons.visibility_off, color: CustomColor.labelColor)
              : const Icon(Icons.visibility, color: CustomColor.labelColor),
          onPressed: toggle,
        ),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText!,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
