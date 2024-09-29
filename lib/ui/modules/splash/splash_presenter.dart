import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:flutter/foundation.dart';

abstract class SplashPresenter {
  ValueNotifier<NavigationData?> get navigateToStream;

  Future<void> checkAccount({int durationInSeconds});
}
