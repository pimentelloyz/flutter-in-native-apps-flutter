import 'dart:async';

import 'package:ai_que_fome_flutter/domain/usecases/coupon/load_coupon.dart';
import 'package:ai_que_fome_flutter/main/routes/routes_app.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_data.dart';
import 'package:ai_que_fome_flutter/ui/modules/coupon/coupon_viewmodel.dart';

import '../../../domain/helpers/domain_error.dart';
import '../../../ui/helpers/helpers.dart';
import '../../../ui/modules/coupon/coupon_presenter.dart';
import '../../mixins/mixins.dart';

class StreamCouponPresenter
    with LoadingManager, NavigationManager, FormManager, UIErrorManager
    implements CouponPresenter {
  final LoadCoupon loadCoupon;
  final StreamController<CouponsViewmodel?> _viewModel =
      StreamController<CouponsViewmodel?>.broadcast();
  StreamCouponPresenter({required this.loadCoupon});

  @override
  Stream<CouponsViewmodel?> get viewModel => _viewModel.stream;

  @override
  void backToNative() {
    navigateTo = NavigationData(
      route: Routes.backToNative,
      clear: false,
    );
  }

  @override
  void goToDetails() {
    navigateTo = NavigationData(route: Routes.couponDetails, clear: false);
  }

  @override
  Future<void> loadData() async {
    try {
      mainError = null;
      isLoading = LoadingData(isLoading: true, style: LoadingStyle.light);
      final coupons = await loadCoupon.load();
      final couponsViewmodel = coupons
          .map((item) => CouponViewmodel(
                id: item.id,
                coupon: item.coupon,
                description: item.description,
                maturity: item.maturity,
              ))
          .toList();
      _viewModel.sink.add(CouponsViewmodel(coupons: couponsViewmodel));
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
}
