import 'package:flutter/material.dart';

import '../components/components.dart';
import '../helpers/helpers.dart';

mixin UIErrorManager {
  void handleMainError(BuildContext context, ValueNotifier<UIError?> notifier) {
    notifier.addListener(
      () {
        final error = notifier.value;
        if (error != null) {
          showErrorMessage(context, error.description);
        }
      },
    );
  }
}
