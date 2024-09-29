import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:flutter/foundation.dart';

abstract class SplashPresenter {
  ValueNotifier<String?> get mainErrorStream;
  ValueNotifier<NavigationData?> get navigateToStream;

  Future<void> convinienceInit({int durationInSeconds});
}
