import 'package:flutter/material.dart';

class MyPasswordField extends StatefulWidget {
  final hintText;
  MyPasswordField({required this.hintText});
  @override
  State<StatefulWidget> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: passwordHidden,
      decoration: InputDecoration(
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
