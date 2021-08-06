import 'package:flutter/material.dart';

class MyPasswordField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final String? errorText;
  final String? Function(String?)? validator;
  MyPasswordField({
    required this.hintText,
    this.controller,
    this.errorText,
    this.validator,
  });
  @override
  State<StatefulWidget> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: passwordHidden,
      decoration: InputDecoration(
        errorText: widget.errorText,
        suffixIcon: IconButton(
          icon: Icon(!passwordHidden ? Icons.visibility : Icons.visibility_off,
              size: 20),
          onPressed: () => setState(() => passwordHidden = !passwordHidden),
        ),
        isDense: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 13),
        contentPadding: EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
