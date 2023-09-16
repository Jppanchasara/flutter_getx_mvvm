import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getx_mvvm/res/colors/colors.dart';

class utils {
  //filedfocusnode
  static void filedFocusNode(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  //toastMessageBottom
  static toastMessageBottom(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackcolor,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 15,
      textColor: AppColor.whitecolor
    );
  }

  //Toastmessage to center
   static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackcolor,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 15,
      textColor: AppColor.whitecolor
    );
  }

  //snackbar using Getx
  static SnackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
