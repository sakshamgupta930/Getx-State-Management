import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Get X")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Get.to(const Screen1(name: "Saksham"));
                Get.toNamed('/screen1', arguments: ['Saksham', 'Gupta']);
              },
              child: const Text("Go to next screen"),
            ),
          ],
        ),
      ),
    );
  }
}
