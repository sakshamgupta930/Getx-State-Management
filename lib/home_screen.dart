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
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("Get x dialog alert with getx"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  // middleText: "Are you sure you want to delete this chat?",
                  content: const Column(
                    children: [
                      Text("Demo Text"),
                      Text("Demo Text"),
                      Text("Demo Text"),
                      Text("Demo Text"),
                    ],
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  titlePadding: const EdgeInsets.only(top: 20),
                  // textConfirm: "Yes",
                  // textCancel: "Cancel",
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text("Ok"),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                      // Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("Get x Bottom Sheet with getx"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
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
