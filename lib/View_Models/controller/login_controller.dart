import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Utils/utils.dart';
import 'package:getx_mvvm/View/prctice/pracitce.dart';
import 'package:getx_mvvm/repository/login_repositary/login_repositary.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final EmailController = TextEditingController().obs;
  final PasswordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;

  void loignApp() {
    loading.value = true;
    Map data = {
      "email": EmailController.value.text,
      "password": PasswordController.value.text
    };

    print(data);
    _api.LoginApi(data).then((value) {
      loading.value = false;
      // utils.SnackBar('Login', 'Login Successfully');
      if (value["error"] == 'user not found') {
        utils.SnackBar('Login failed', value['error']);
      } else {
        //Get.toNamed(RoutesName.HomeScreen);
        Get.toNamed(RoutesName.HomeScreen);
        utils.SnackBar('Login', 'Login Successfully');
      }
    }).onError((error, stackTrace) {
      print(error.toString());
      loading.value = false;
      utils.SnackBar("Error ", e.toString());
    });
  }
}
