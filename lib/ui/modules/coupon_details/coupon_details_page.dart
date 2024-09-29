import 'package:ai_que_fome_flutter/presentation/mixins/form_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/ui_error_manager.dart';
import 'package:flutter/material.dart';

class CouponDetailsPage extends StatefulWidget {
  const CouponDetailsPage({
    super.key,
  });

  @override
  CouponDetailsPageState createState() => CouponDetailsPageState();
}

class CouponDetailsPageState extends State<CouponDetailsPage>
    with NavigationManager, FormManager, UIErrorManager, LoadingManager {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 247, 242, 242),
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 153, 39, 198),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Detalhes do cupon',
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 39, 198),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          body: Container(),
        );
      },
    );
  }
}
