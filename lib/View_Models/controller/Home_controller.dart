import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Data/response/status.dart';
import 'package:getx_mvvm/Models/Home_model/Userlistmodel.dart';
import 'package:getx_mvvm/repository/Home_repositary/Home_repositary.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();
  RxBool apiheat = false.obs;
  final rxRequestStatus = Status.COMPLETED.obs;
  final userList = UserListModel().obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;

  void userListApi() {
    _api.UserListApi().then((value) {
      apiheat = true.obs;
      setRxRequestStatus(Status.COMPLETED);
      print('-------------${value.totalPages}------------');
      setUserList(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR);
    });
  }
}
