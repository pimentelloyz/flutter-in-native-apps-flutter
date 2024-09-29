import 'package:ai_que_fome_flutter/ui/modules/coupon/coupon_page.dart';
import 'package:flutter/material.dart';

import 'coupon_presenter_factory.dart';

Widget makeCouponPage() => CouponPage(presenter: makeCouponPresenter());
