import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screen2.dart';

class Screen1 extends StatefulWidget {
  var name;
  Screen1({super.key, this.name});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1 " + Get.arguments[0]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(const Screen2());
              },
              child: const Text("Go To Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
