import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;

  void loginApi() async {
    isLoading.value = true;
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      }, headers: {});

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar('Login successful', 'Logged In');
      } else {
        isLoading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
