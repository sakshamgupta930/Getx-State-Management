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
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text("English"),
              ),
              const SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('hi', 'IN'));
                },
                child: const Text("Hindi"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
