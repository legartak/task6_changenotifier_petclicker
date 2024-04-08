import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/pet_base.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final int balance = Provider.of<PetBase>(context).balance;

    return Text(
      "Your balance is $balance coins!",
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
