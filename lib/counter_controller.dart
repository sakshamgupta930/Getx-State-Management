import 'package:get/get.dart';

class CounterController extends GetxController {
  // Data type for getx -- > RxInt

  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
  }
}
