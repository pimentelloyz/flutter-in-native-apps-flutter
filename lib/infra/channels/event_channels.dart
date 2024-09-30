import 'package:ai_que_fome_flutter/main/app.dart';
import 'package:ai_que_fome_flutter/ui/components/expired_token_alert.dart';
import 'package:ai_que_fome_flutter/ui/components/sucess_message.dart';
import 'package:flutter/services.dart';

class AiQFMChannel {
  static MethodChannel? platform;

  static void init() {
    if (platform == null) {
      platform = const MethodChannel('com.example.ai_que_fome_flutter');
      platform?.setMethodCallHandler(AiQFMChannel.processCall);
    }
  }

  static Future<dynamic> processCall(MethodCall call) async {
    Map<dynamic, dynamic> args = call.arguments;
    switch (call.method) {
      case "router":
        final route = args['route'] as String;
        final aiqfRouter =
            AiqfRouter.values.firstWhere((e) => e.value == route);
        switch (aiqfRouter) {
          case AiqfRouter.back:
            break;
          case AiqfRouter.sessionExpired:
            final context = navigatorKey.currentContext!;
            showExpiredSessionMessage(context, 'Token expirado');
          case AiqfRouter.tokenUpdated:
            final context = navigatorKey.currentContext!;
            showSuccessMessage(context, 'Token atualizado');
        }
        break;
    }
  }
}

enum AiqfRouter {
  back('BACKTONATIVE'),
  sessionExpired('SESSIONEXPIRED'),
  tokenUpdated('TOKENUPDATED');

  final String value;
  const AiqfRouter(this.value);
}
