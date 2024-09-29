import 'package:flutter/material.dart';

import '../../presentation/mixins/mixins.dart';

void hideLoading(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.of(context).pop();
  }
}

Future<void> showLoading(BuildContext context, LoadingData data) async {
  Future.delayed(Duration.zero, () async {
    await showDialog(
      barrierColor: data.style == LoadingStyle.light
          ? Theme.of(context).primaryColor.withAlpha(1)
          : Theme.of(context).primaryColorDark,
      context: context,
      barrierDismissible: false,
      builder: (context) => SimpleDialog(
        titlePadding: EdgeInsets.zero,
        elevation: 0,
        contentPadding: EdgeInsets.zero,
        shadowColor: data.style == LoadingStyle.light
            ? Colors.transparent
            : Theme.of(context).primaryColor,
        backgroundColor: data.style == LoadingStyle.light
            ? Colors.transparent
            : Theme.of(context).primaryColorDark,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                color: data.style == LoadingStyle.light
                    ? Theme.of(context).primaryColor
                    : Colors.white,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  });
}
