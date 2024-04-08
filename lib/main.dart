import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task6_changenotifier_petclicker/controllers/pet_base.dart';
import 'package:task6_changenotifier_petclicker/widgets/custom_drawer.dart';
import 'package:task6_changenotifier_petclicker/widgets/pet_shop_page.dart';

import 'widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 6 ChangeNotifier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (progcont) => PetBase(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PetClicker Home Page"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: const CustomDrawer(),
      body: const Column(
        children: [
          MainPage(),
          PetShopPage(),
        ],
      ),
    );
  }
}
