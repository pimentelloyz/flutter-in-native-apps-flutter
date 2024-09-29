class CouponsViewmodel {
  final List<CouponViewmodel> coupons;

  CouponsViewmodel({
    required this.coupons,
  });
}

class CouponViewmodel {
  final int id;
  final String? coupon;
  final String? description;
  final String? maturity;

  CouponViewmodel({
    required this.id,
    required this.coupon,
    required this.description,
    required this.maturity,
  });

  bool get isExpired {
    return true;
  }

  bool get isOutOfStock {
    return false;
  }

  String get validity {
    return '12/09/23';
  }
}
