import 'package:flutter/foundation.dart';

import '../../ui/helpers/helpers.dart';

mixin UIErrorManager {
  final ValueNotifier<UIError?> mainErrorStream = ValueNotifier<UIError?>(null);
  set mainError(UIError? value) {
    mainErrorStream.value = value;
  }

  ValueNotifier<UIError?> get mainErrorValue => mainErrorStream;
}
