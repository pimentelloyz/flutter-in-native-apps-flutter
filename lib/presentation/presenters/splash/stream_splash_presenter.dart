import '../../../main/routes/routes_app.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/splash/splash_presenter.dart';
import '../../mixins/mixins.dart';

bool backToNativeGlobal = false;

enum AiqfRouter {
  back('BACKTONATIVE');

  final String value;
  const AiqfRouter(this.value);
}

class StreamSplashPresenter
    with NavigationManager, UIErrorManager
    implements SplashPresenter {
  @override
  Future<void> convinienceInit({int durationInSeconds = 5}) async {
    // const eventChannel = EventChannel('com.example.ai_que_fome_flutter/router');

    // eventChannel.receiveBroadcastStream().listen((event) {
    //   mainError = event.toString();

    //   // final route = event['route'] as String;
    //   // final aiqfRouter = AiqfRouter.values.firstWhere((e) => e.value == route);
    //   // switch (aiqfRouter) {
    //   //   case AiqfRouter.back:
    //   //     backToNativeGlobal = true;
    //   // }
    // }, onError: (error) {
    //   backToNativeGlobal = false;
    //   mainError = error.toString();
    // });
    await Future.delayed(Duration(seconds: durationInSeconds));
    navigateTo = NavigationData(route: Routes.coupon, clear: true);
  }
}
