import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task6_changenotifier_petclicker/controllers/pet_base.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome to updated version of PetClicker! Now you can earn coins and buy pets to increase income',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        Consumer<PetBase>(
          builder: (progcont, data, _) {
            return GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const SizedBox(
                  height: 150,
                  width: 150,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.blueAccent),
                    child: Center(
                      child: Text(
                        "Click me!",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                data.earnMoney();
              },
            );
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
