import 'package:flutter/material.dart';
import 'package:task6_changenotifier_petclicker/widgets/pet_shop_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("images/pets.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'App Menu',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 12,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.store),
            iconColor: Colors.black,
            title: const Text(
              "Pet Shop",
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PetShopPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
