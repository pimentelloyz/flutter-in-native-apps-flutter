// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import './app.dart';
import 'app_modular.dart';
import 'factories/supabase/supabase_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseInitializer().init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}