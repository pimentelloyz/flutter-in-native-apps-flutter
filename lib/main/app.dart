import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../share/utils/mrnt_color.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp.router(
      title: 'AIQF',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MrntColors.primary,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
