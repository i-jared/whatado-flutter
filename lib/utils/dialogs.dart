import 'package:flutter/material.dart';

showMyDialog(BuildContext context, Widget dialog) {
  return showDialog(context: context, builder: (BuildContext context) => dialog);
}
