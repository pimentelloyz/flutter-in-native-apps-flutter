import 'package:ai_que_fome_flutter/infra/channels/event_channels.dart';
import 'package:ai_que_fome_flutter/presentation/mixins/form_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/ui_error_manager.dart';
import 'package:ai_que_fome_flutter/ui/modules/coupon/components/coupon_card.dart';
import 'package:ai_que_fome_flutter/ui/modules/coupon/coupon_viewmodel.dart';
import 'package:flutter/material.dart';

import 'coupon_presenter.dart';

class CouponPage extends StatefulWidget {
  final CouponPresenter presenter;

  const CouponPage({
    super.key,
    required this.presenter,
  });

  @override
  CouponPageState createState() => CouponPageState();
}

class CouponPageState extends State<CouponPage>
    with NavigationManager, FormManager, UIErrorManager, LoadingManager {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        handleNavigation(widget.presenter.navigateToStream);
        widget.presenter.loadData();
        return StreamBuilder<CouponsViewmodel?>(
            stream: widget.presenter.viewModel,
            builder: (context, snapshot) {
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
                      await AiQFMChannel.platform?.invokeMethod(
                          'router', {'route': AiqfRouter.back.value});
                    },
                  ),
                  title: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'cupons',
                      style: TextStyle(
                        color: Color.fromARGB(255, 153, 39, 198),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 32.0, horizontal: 16.0),
                  child: Column(
                    children: [
                      const Row(
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
                              'Toque no nome do cupom para copiar',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14.0),
                      Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data?.coupons.length ?? 0,
                          itemBuilder: (context, index) {
                            final viewModel = snapshot.data?.coupons[index];
                            if (viewModel != null) {
                              return CouponCard(
                                viewmodel: viewModel,
                                onDetailsTap: () {
                                  widget.presenter.goToDetails();
                                },
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
