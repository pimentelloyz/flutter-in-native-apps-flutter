import 'package:ai_que_fome_flutter/ui/mixins/navigation_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/ui_error_manager.dart';
import 'package:ai_que_fome_flutter/ui/modules/splash/splash_presenter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage({super.key, required this.presenter});

  @override
  // ignore: library_private_types_in_public_api
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with NavigationManager, UIErrorManager {
  @override
  Widget build(BuildContext context) {
    handleMainError(context, widget.presenter.mainErrorStream);
    widget.presenter.convinienceInit();

    return Material(
      child: Builder(
        builder: (context) {
          handleNavigation(widget.presenter.navigateToStream);
          return Container(
            color: Colors.white,
            child: const CupertinoActivityIndicator(),
          );
        },
      ),
    );
  }
}
