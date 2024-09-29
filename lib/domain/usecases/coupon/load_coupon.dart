import 'package:ai_que_fome_flutter/domain/entities/coupon/coupon_entity.dart';

abstract class LoadCoupon {
  Future<List<CouponEntity>> load();
}
