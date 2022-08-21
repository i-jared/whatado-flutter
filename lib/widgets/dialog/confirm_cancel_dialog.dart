import 'package:flutter/material.dart';

class ConfirmCancelDialog extends StatelessWidget {
  final String title;
  final String body;
  final String confirmText;
  final VoidCallback onConfirm;
  ConfirmCancelDialog(
      {required this.title,
      required this.body,
      required this.confirmText,
      required this.onConfirm});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(title: Text(title), content: Text(body), actions: [
      TextButton(child: Text('Cancel'), onPressed: () => Navigator.pop(context)),
      TextButton(child: Text(confirmText), onPressed: onConfirm),
    ]);
  }
}
