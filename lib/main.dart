import 'package:cryptorank/pages/home_page.dart';
import 'package:cryptorank/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/assets_controller.dart';  // Import your AssetsController

void main() async {
  await registerServices();
  await registerControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Crypto Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,

      ),
      routes: {
        "/home": (context) => HomePage(),
      },
      initialRoute: "/home",
    );
  }
}
