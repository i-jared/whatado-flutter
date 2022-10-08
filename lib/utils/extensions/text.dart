import 'package:flutter/material.dart';
import 'package:whatado/constants.dart';

extension Styles on Text {
  Text bold() {
    return Text(this.data ?? '',
        style: this.style?.copyWith(fontWeight: FontWeight.bold) ??
            TextStyle(fontWeight: FontWeight.bold));
  }

  Text reallybold() {
    return Text(this.data ?? '',
        style: this.style?.copyWith(fontWeight: FontWeight.w800) ??
            TextStyle(fontWeight: FontWeight.w800));
  }

  Text semibold() {
    return Text(this.data ?? '',
        style: this.style?.copyWith(fontWeight: FontWeight.w500) ??
            TextStyle(fontWeight: FontWeight.w500));
  }

  Text primary() {
    return Text(this.data ?? '',
        style:
            this.style?.copyWith(color: AppColors.primary) ?? TextStyle(color: AppColors.primary));
  }

  Text title() {
    return Text(this.data ?? '',
        style: this.style?.copyWith(fontSize: 27) ?? TextStyle(fontSize: 27));
  }

  Text heading() {
    return Text(this.data ?? '',
        style: this.style?.copyWith(fontSize: 20) ?? TextStyle(fontSize: 20));
  }

  Text subtitle() {
    return Text(this.data ?? '',
        style: this.style?.copyWith(fontSize: 16, color: Colors.grey) ??
            TextStyle(fontSize: 16, color: Colors.grey));
  }
}
