import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/switch_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SwitchController switchController = Get.put(SwitchController());
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Get X")),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Notification"),
                Obx(
                  () => Switch(
                    value: switchController.notification.value,
                    onChanged: (value) {
                      switchController.setNotification(value);
                    },
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
