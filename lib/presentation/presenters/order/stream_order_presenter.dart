import 'dart:async';

import 'package:ai_que_fome_flutter/main/routes/routes_app.dart';
import 'package:ai_que_fome_flutter/presentation/presenters/splash/stream_splash_presenter.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:ai_que_fome_flutter/ui/modules/order/order_presenter.dart';

import '../../../domain/helpers/domain_error.dart';
import '../../../ui/helpers/helpers.dart';
import '../../mixins/mixins.dart';

class StreamOrderPresenter
    with LoadingManager, NavigationManager, FormManager, UIErrorManager
    implements OrderPresenter {
  @override
  Future<void> loadData() async {
    try {
      mainError = null;
      isLoading = LoadingData(isLoading: true, style: LoadingStyle.light);
    } on DomainError catch (error) {
      switch (error) {
        case DomainError.invalidCredentials:
          mainError = UIError.invalidCredentials.name;
          break;
        default:
          mainError = UIError.unexpected.name;
          break;
      }
    } finally {
      isLoading = LoadingData(isLoading: false);
    }
  }

  @override
  void routerTo() {
    navigateTo = NavigationData(
      route: Routes.backToNative,
      clear: false,
      navigationBack: !backToNativeGlobal,
      nativeNavigation: backToNativeGlobal,
    );
  }
}
