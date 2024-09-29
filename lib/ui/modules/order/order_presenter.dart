import 'dart:async';

import 'package:ai_que_fome_flutter/presentation/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:flutter/foundation.dart';

abstract class OrderPresenter {
  Stream<bool> get isFormValidStream;
  ValueNotifier<LoadingData?> get isLoadingStream;
  ValueNotifier<String?> get mainErrorStream;
  ValueNotifier<NavigationData?> get navigateToStream;

  Future<void> loadData();
  void routerTo();
}
