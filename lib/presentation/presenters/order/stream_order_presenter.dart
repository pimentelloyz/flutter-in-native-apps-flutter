import 'dart:async';

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
