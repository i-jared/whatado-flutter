import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

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
        border: InputBorder.none,
        errorText: widget.errorText,
        suffixIcon: IconButton(
          icon: Icon(!passwordHidden ? Icons.visibility : Icons.visibility_off, size: 20),
          onPressed: () => setState(() => passwordHidden = !passwordHidden),
        ),
        isDense: true,
        // hintText: widget.hintText,
        // labelText: 'Password',
        label: Row(
          children: [
            Icon(Icons.lock_outline_rounded, color: AppColors.primary, size: 16),
            SizedBox(width: 5),
            Text('Password'),
          ],
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
