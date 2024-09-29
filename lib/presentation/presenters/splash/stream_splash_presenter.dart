import '../../../main/routes/routes_app.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/splash/splash_presenter.dart';
import '../../mixins/mixins.dart';

class StreamSplashPresenter with NavigationManager implements SplashPresenter {
  @override
  Future<void> checkAccount({int durationInSeconds = 2}) async {
    await Future.delayed(Duration(seconds: durationInSeconds));
    navigateTo = NavigationData(route: Routes.coupon, clear: true);
  }
}
