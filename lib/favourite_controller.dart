import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = ["Orange", "Banana", "Mango", "Papaya"].obs;
  RxList tempFruit = [].obs;

  addToFavouorite(String value) {
    tempFruit.add(value);
  }

  removefromFavouorite(String value) {
    tempFruit.remove(value);
  }
}
