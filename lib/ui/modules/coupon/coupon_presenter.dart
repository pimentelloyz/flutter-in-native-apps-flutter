import 'dart:async';

import 'package:ai_que_fome_flutter/presentation/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/helpers/errors/ui_error.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:flutter/foundation.dart';

abstract class CouponPresenter {
  Stream<bool> get isFormValidStream;
  ValueNotifier<LoadingData?> get isLoadingStream;
  ValueNotifier<UIError?> get mainErrorStream;
  ValueNotifier<NavigationData?> get navigateToStream;

  Future<void> loadData();
}
