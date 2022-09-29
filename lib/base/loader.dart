import 'package:flutter/material.dart';

void loadingShow(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(),
          )
        ],
      );
    },
  );
}

void loadingHide(BuildContext context) {
  Navigator.pop(context);
}

