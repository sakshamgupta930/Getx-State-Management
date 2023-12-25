import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';
import 'package:get_x/screen1.dart';
import 'package:get_x/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get X',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => const Screen2()),
      ],
    );
  }
}
