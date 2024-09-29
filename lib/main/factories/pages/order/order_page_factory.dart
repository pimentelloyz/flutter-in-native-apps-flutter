import 'package:ai_que_fome_flutter/main/factories/pages/order/order_presenter_factory.dart';
import 'package:ai_que_fome_flutter/ui/modules/order/order_page.dart';
import 'package:flutter/widgets.dart';

Widget makeOrderPage() => OrderPage(presenter: makeOrderPresenter());
