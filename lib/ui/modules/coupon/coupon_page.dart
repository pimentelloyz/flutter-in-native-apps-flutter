import 'package:ai_que_fome_flutter/presentation/mixins/form_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/loading_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/navigation_manager.dart';
import 'package:ai_que_fome_flutter/ui/mixins/ui_error_manager.dart';
import 'package:ai_que_fome_flutter/ui/modules/coupon/components/coupon_card.dart';
import 'package:flutter/material.dart';

import 'coupon_presenter.dart';

class CouponPage extends StatefulWidget {
  final CouponPresenter presenter;

  const CouponPage({
    super.key,
    required this.presenter,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage>
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
                'cupons',
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 39, 198),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              Padding(
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
                    CouponCard(
                      title: 'PRIMEIROCOM10',
                      discount: 'R\$ 10,00 DE DESCONTO',
                      validity: '30/set',
                      onDetailsTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CouponCard(
                        title: 'FARMAIQ',
                        discount: 'ENTREGA GRÁTIS',
                        validity: '',
                        isOutOfStock: true,
                        onDetailsTap: () {},
                      ),
                    ),
                    CouponCard(
                      title: 'AIQRANGO',
                      discount: 'R\$ 5,00 DE DESCONTO',
                      validity: '28/set',
                      isExpired: true,
                      onDetailsTap: () {},
                    ),
                    const SizedBox(height: 8.0),
                    CouponCard(
                      title: 'MARINGAAIQ',
                      discount: 'R\$ 10,00 DE DESCONTO',
                      validity: '',
                      isOutOfStock: true,
                      onDetailsTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}