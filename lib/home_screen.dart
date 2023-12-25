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
        title: const Center(child: Text("Get X")),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Get.snackbar(
              "Saksham Gupta",
              "Subscribe",
              // onTap: (snack) => ,
              mainButton:
                  TextButton(onPressed: () {}, child: const Text("View")),
              icon: const Icon(Icons.message),
              // backgroundColor: Colors.red,
              snackPosition: SnackPosition.TOP,
            );
          }),
    );
  }
}
