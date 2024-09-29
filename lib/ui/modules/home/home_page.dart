import 'package:ai_que_fome_flutter/main/app.dart';
import 'package:ai_que_fome_flutter/presentation/mixins/form_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/ui_error_manager.dart';
import 'package:flutter/material.dart';

import 'home_presenter.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;

  const HomePage({
    super.key,
    required this.presenter,
  });

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with NavigationManager, FormManager, UIErrorManager, LoadingManager {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          key: navigatorKey,
          backgroundColor: const Color.fromARGB(255, 247, 242, 242),
          body: const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.content_copy,
                      color: Color.fromARGB(255, 153, 39, 198),
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
