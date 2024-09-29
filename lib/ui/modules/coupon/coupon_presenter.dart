import 'dart:async';

import 'package:ai_que_fome_flutter/presentation/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:ai_que_fome_flutter/ui/modules/coupon/coupon_viewmodel.dart';
import 'package:flutter/foundation.dart';

abstract class CouponPresenter {
  Stream<bool> get isFormValidStream;
  ValueNotifier<LoadingData?> get isLoadingStream;
  ValueNotifier<String?> get mainErrorStream;
  ValueNotifier<NavigationData?> get navigateToStream;
  Stream<CouponsViewmodel?> get viewModel;

  void backToNative();
  void goToDetails();
  Future<void> loadData();
}
