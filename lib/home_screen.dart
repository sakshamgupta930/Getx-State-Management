import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: const Center(child: Text("Home")),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .3,
            width: Get.width * .8,
            color: Colors.red,
            child: const Center(
              child: Text('Center'),
            ),
          ),
          Container(
            height: Get.height * .2,
            width: Get.width * .8,
            color: Colors.green,
            child: const Center(
              child: Text('Center'),
            ),
          ),
        ],
      ),
    );
  }
}
