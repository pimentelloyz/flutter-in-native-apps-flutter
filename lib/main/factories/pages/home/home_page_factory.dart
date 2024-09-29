import 'package:ai_que_fome_flutter/main/factories/pages/home/home_presenter_factory.dart';
import 'package:ai_que_fome_flutter/ui/modules/home/home_page.dart';
import 'package:flutter/widgets.dart';

Widget makeHomePage() => HomePage(presenter: makeHomePresenter());
