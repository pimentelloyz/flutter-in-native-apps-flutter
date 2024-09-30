import 'package:ai_que_fome_flutter/infra/channels/event_channels.dart';
import 'package:ai_que_fome_flutter/presentation/mixins/form_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/ui_error_manager.dart';
import 'package:flutter/material.dart';

import 'order_presenter.dart';

class OrderPage extends StatefulWidget {
  final OrderPresenter presenter;

  const OrderPage({
    super.key,
    required this.presenter,
  });

  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage>
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
              onPressed: () async {
                await AiQFMChannel.platform
                    ?.invokeMethod('router', {'route': AiqfRouter.back.value});
              },
            ),
            title: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Meus pedidos',
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 39, 198),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.hourglass_empty,
                      color: Color.fromARGB(255, 153, 39, 198),
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        'Nenhum pedido encontrado',
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
