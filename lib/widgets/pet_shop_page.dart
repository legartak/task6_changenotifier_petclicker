import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task6_changenotifier_petclicker/controllers/pet_base.dart';

class PetShopPage extends StatelessWidget {
  const PetShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    int dogsNumber = Provider.of<PetBase>(context).dogs;
    int catsNumber = Provider.of<PetBase>(context).cats;

    return Column(
      children: [
        const Text("Pet Shop"),
        Text("Number of your cats is: $catsNumber"),
        Consumer<PetBase>(
          builder: (progcont, data, _) {
            return GestureDetector(
              onTap: data.balance >= 5 ? () {
                data.buyCat();
              } : null,
              child: const SizedBox(
                height: 50,
                width: 150,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(
                    child: Text(
                      "Buy a cat",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Text("Number of your dogs is: $dogsNumber"),
        Consumer<PetBase>(
          builder: (progcont, data, _) {
            return GestureDetector(
              onTap: data.balance >= 10 ? () {
                data.buyDog();
              } : null,
              child: const SizedBox(
                height: 50,
                width: 150,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Center(
                    child: Text(
                      "Buy a dog",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
