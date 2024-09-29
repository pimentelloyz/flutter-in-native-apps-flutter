import 'package:ai_que_fome_flutter/main/factories/pages/coupon/coupon_page_factory.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../routes/routes_app.dart';
import '../pages/splash/splash_page_factory.dart';

class MainModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Routes.splash,
      child: (_) => makeSplashPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.coupon,
      child: (_) => makeCouponPage(),
      transition: TransitionType.fadeIn,
    );
  }
}
