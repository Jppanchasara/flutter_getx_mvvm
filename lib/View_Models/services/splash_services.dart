import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';

class SplashServices {
  void IsLogin() {
    Timer(const Duration(seconds: 2), () => Get.toNamed(RoutesName.loginScreen));
  }
}
