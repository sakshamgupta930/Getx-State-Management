import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Get X")),
      ),
      body: ListView.builder(
        itemCount: favouriteController.fruitList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (favouriteController.tempFruit.contains(
                    favouriteController.fruitList[index].toString())) {
                  favouriteController.removefromFavouorite(
                      favouriteController.fruitList[index].toString());
                } else {
                  favouriteController.addToFavouorite(
                      favouriteController.fruitList[index].toString());
                }
              },
              title: Text(favouriteController.fruitList[index].toString()),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color: favouriteController.tempFruit.contains(
                          favouriteController.fruitList[index].toString())
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
