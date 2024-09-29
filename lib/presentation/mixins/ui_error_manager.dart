import 'package:flutter/foundation.dart';

mixin UIErrorManager {
  final ValueNotifier<String?> mainErrorStream = ValueNotifier<String?>(null);
  set mainError(String? value) {
    mainErrorStream.value = value;
  }

  ValueNotifier<String?> get mainErrorValue => mainErrorStream;
}
