import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String? errorText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int maxLines;
  MyTextField({
    required this.hintText,
    this.controller,
    this.errorText,
    this.validator,
    this.maxLines = 1
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorText: errorText,
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 13),
        contentPadding: EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
