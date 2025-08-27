import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {

    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: borderStyle(),
        enabledBorder: borderStyle(),
        focusedBorder: borderStyle(kPrimaryColor),
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder borderStyle([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
