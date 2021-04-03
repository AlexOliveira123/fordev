import 'package:flutter/material.dart';
import '../helpers/helpers.dart';

void showLoading(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SimpleDialog(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text(R.strings.wait, textAlign: TextAlign.center),
            ],
          )
        ],
      );
    },
  );
}

void hideLoading(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.of(context).pop();
  }
}
