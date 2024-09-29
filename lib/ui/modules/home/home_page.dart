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
        return SafeArea(
          key: navigatorKey,
          minimum: const EdgeInsets.only(top: 68),
          child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 247, 242, 242),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 24.0, left: 16.0, right: 16.0, bottom: 24.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/ui/assets/images/image.png',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              'lib/ui/assets/images/hotdog.png',
                              fit: BoxFit.cover,
                              height: 32.0,
                            ),
                          ),
                          const Text(
                            'lanches',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              'lib/ui/assets/images/pizza.png',
                              fit: BoxFit.cover,
                              height: 32.0,
                            ),
                          ),
                          const Text(
                            'pizza',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              'lib/ui/assets/images/burguer.png',
                              fit: BoxFit.cover,
                              height: 32.0,
                            ),
                          ),
                          const Text(
                            'burguer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              'lib/ui/assets/images/fries.png',
                              height: 32.0,
                            ),
                          ),
                          const Text(
                            'porções',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              'lib/ui/assets/images/food.png',
                              fit: BoxFit.cover,
                              height: 32.0,
                            ),
                          ),
                          const Text(
                            'lanches',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              'lib/ui/assets/images/acai.png',
                              fit: BoxFit.cover,
                              height: 32.0,
                            ),
                          ),
                          const Text(
                            'lanches',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 8.0,
                                  ),
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.percent,
                                      size: 10,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'É sempre uma boa opção',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'pra sobremesa ou um lanchinho',
                          ),
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/ui/assets/images/card.png',
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    width: 110,
                                    alignment: Alignment.topLeft,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        height: 100,
                                        width: 100,
                                        'lib/ui/assets/images/estevam.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "Estevam's açai",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 110,
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          height: 100,
                                          width: 100,
                                          'lib/ui/assets/images/acai_card.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Açai do Para",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, left: 16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.teal,
                      ),
                      child: const Center(
                        child: Text(
                          "Nenhum endereço nessa cidade ainda",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
