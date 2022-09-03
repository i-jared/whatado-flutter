import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class LabeledOutlineTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextCapitalization? textCapitalization;
  final String? Function(String?)? validator;
  LabeledOutlineTextField({
    required this.label,
    this.controller,
    this.hintText,
    this.maxLength,
    this.maxLines,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.textCapitalization,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(AppRadii.button)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[700])),
          TextFormField(
            validator: validator,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            maxLength: maxLength,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIconConstraints: suffixIconConstraints,
              hintText: hintText,
              suffixIcon: suffixIcon,
            ),
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}
