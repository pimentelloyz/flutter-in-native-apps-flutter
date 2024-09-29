import '../../../main/routes/routes_app.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/splash/splash_presenter.dart';
import '../../mixins/mixins.dart';

bool backToNativeGlobal = false;

class StreamSplashPresenter
    with NavigationManager, UIErrorManager
    implements SplashPresenter {
  @override
  Future<void> convinienceInit({int durationInSeconds = 5}) async {
    await Future.delayed(Duration(seconds: durationInSeconds));
    navigateTo = NavigationData(route: Routes.home, clear: true);
  }
}
