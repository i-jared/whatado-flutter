import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class AutoLabelField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController? controller;
  final String? errorText;
  final String? Function(String?)? validator;
  AutoLabelField({
    required this.label,
    required this.icon,
    this.controller,
    this.errorText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        errorText: errorText,
        isDense: true,
        // hintText: widget.hintText,
        // labelText: 'Password',
        label: Row(
          children: [
            Icon(icon, color: AppColors.primary, size: 16),
            SizedBox(width: 5),
            Text(label),
          ],
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
