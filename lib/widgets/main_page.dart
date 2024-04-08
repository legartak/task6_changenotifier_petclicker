import 'package:flutter/material.dart';
import 'package:task6_changenotifier_petclicker/widgets/balance.dart';

import 'intro_and_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Intro(),
        Center(
          child: BalanceWidget(),
        ),
      ],
    );
  }
}
