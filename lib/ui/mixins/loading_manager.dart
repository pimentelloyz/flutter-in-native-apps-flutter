import 'package:flutter/material.dart';

import '../../presentation/mixins/loading_manager.dart';
import '../components/components.dart';

ValueNotifier<LoadingData?>? currentStream;
mixin LoadingManager {
  void handleLoading(BuildContext context, ValueNotifier<LoadingData?> stream) {
    if (currentStream.hashCode != stream.hashCode) {
      currentStream?.removeListener(() {});
      currentStream = stream;
      stream.addListener(
        () async {
          final value = stream.value;
          if (!context.mounted) return;
          if (value != null && value.isLoading == true) {
            await showLoading(context, value);
          } else {
            hideLoading(context);
          }
        },
      );
    }
  }
}
