import 'package:flutter/material.dart';

import '../components/components.dart';

mixin UIErrorManager {
  void handleMainError(BuildContext context, ValueNotifier<String?> notifier) {
    notifier.addListener(
      () {
        final error = notifier.value;
        if (error != null) {
          showErrorMessage(context, error);
        }
      },
    );
  }
}
