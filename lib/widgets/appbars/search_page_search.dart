import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

class SearchPageSearch extends StatelessWidget {
  final TextEditingController controller;
  SearchPageSearch({required this.controller});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          suffixIcon: Icon(Icons.search, color: AppColors.primary),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadii.button),
              borderSide: BorderSide(width: 2.0, color: AppColors.primary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadii.button),
              borderSide: BorderSide(width: 2.0, color: AppColors.primary)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadii.button),
              borderSide: BorderSide(width: 2.0)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadii.button),
              borderSide: BorderSide(width: 2.0)),
          hintText: 'Search'),
      maxLines: null,
    );
  }
}
