import 'dart:async';

import '../../../domain/helpers/domain_error.dart';
import '../../../ui/helpers/helpers.dart';
import '../../../ui/modules/coupon/coupon_presenter.dart';
import '../../mixins/mixins.dart';

class StreamCouponPresenter
    with LoadingManager, NavigationManager, FormManager, UIErrorManager
    implements CouponPresenter {
  @override
  Future<void> loadData() async {
    try {
      mainError = null;
      isLoading = LoadingData(isLoading: true, style: LoadingStyle.light);
    } on DomainError catch (error) {
      switch (error) {
        case DomainError.invalidCredentials:
          mainError = UIError.invalidCredentials;
          break;
        default:
          mainError = UIError.unexpected;
          break;
      }
    } finally {
      isLoading = LoadingData(isLoading: false);
    }
  }
}
