import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ConfirmCancelDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConfirmCancelDialogState();
  final String title;
  final String body;
  final String confirmText;
  final bool isAsync;
  VoidCallback onConfirm;
  VoidFutureCallBack onConfirmAsync;

  ConfirmCancelDialog.async(
      {required this.title,
      required this.body,
      required this.confirmText,
      required this.onConfirmAsync})
      : this.onConfirm = (() {}),
        isAsync = true;

  ConfirmCancelDialog(
      {required this.title, required this.body, required this.confirmText, required this.onConfirm})
      : this.onConfirmAsync = (() async {}),
        this.isAsync = false;
}

class _ConfirmCancelDialogState extends State<ConfirmCancelDialog> {
  late bool loading;
  @override
  void initState() {
    super.initState();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(title: Text(widget.title), content: Text(widget.body), actions: [
      TextButton(child: Text('Cancel'), onPressed: () => Navigator.pop(context)),
      TextButton(
          child: loading
              ? Container(height: 20, width: 20, child: CircularProgressIndicator())
              : Text(widget.confirmText),
          onPressed: loading
              ? null
              : widget.isAsync
                  ? () async {
                      setState(() => loading = true);
                      await Future.delayed(Duration(milliseconds: 500));
                      await widget.onConfirmAsync();
                      if (mounted) setState(() => loading = false);
                    }
                  : widget.onConfirm)
    ]);
  }
}
