import 'package:flutter/foundation.dart';

class LoadingData {
  bool isLoading;
  LoadingStyle style;

  LoadingData({
    required this.isLoading,
    this.style = LoadingStyle.none,
  });

  set isLoadingData(bool value) => isLoading = value;
}

mixin LoadingManager {
  final ValueNotifier<LoadingData?> _isLoadingValue =
      ValueNotifier<LoadingData?>(null);

  set isLoading(LoadingData? value) => _isLoadingValue.value = value;
  ValueNotifier<LoadingData?> get isLoadingStream => _isLoadingValue;
}

enum LoadingStyle {
  primary,
  light,
  none,
}
