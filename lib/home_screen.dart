import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/slider_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SliderController controller = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Get X")),
        ),
        body: Column(
          children: [
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setOpacity(value);
                },
              ),
            ),
          ],
        ));
  }
}
