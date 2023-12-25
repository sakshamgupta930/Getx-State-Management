import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Get X")),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 60),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            controller.incrementCounter();
          }),
    );
  }
}
