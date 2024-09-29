import 'package:ai_que_fome_flutter/main/factories/usecases/coupon/load_coupon_factory.dart';
import 'package:ai_que_fome_flutter/presentation/presenters/coupon/stream_coupon_presenter.dart';
import 'package:ai_que_fome_flutter/ui/modules/coupon/coupon_presenter.dart';

CouponPresenter makeCouponPresenter() => StreamCouponPresenter(
      loadCoupon: makeRemoteLoadCoupon(),
    );
