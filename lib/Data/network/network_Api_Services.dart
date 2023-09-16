import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/Data/app_exceptions.dart';
import 'package:http/http.dart' as http;

import 'package:getx_mvvm/Data/network/base_api_services.dart';

// ignore: camel_case_types
class networkApiServices extends BaseApiServices {
  //Get Api
  @override
  Future<dynamic> getAPi(String url) async {
    if (kDebugMode) {
      log(url);
    }
    dynamic responsejson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responsejson = returnResponse(response);
      log('**************');
    } on SocketException {
      throw InternetException('');
      // ignore: dead_code_on_catch_subtype
    } on SocketException {
      throw TimeoutException('');
    }
    print(responsejson);
    return responsejson;
  }

  //Post Api
  @override
  Future<dynamic> postAPi(var data, String url) async {
    if (kDebugMode) {
      print(data);
      print(url);
    }

    dynamic responsejson;

    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      log('setp 1');
      responsejson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
      // ignore: dead_code_on_catch_subtype
    } on SocketException {
      throw TimeoutException('');
    }

    print(responsejson);
    return responsejson;
  }

  //check th status code
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 400:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      default:
        throw FetchDataException(
            'Error accoured while communication with server${response.statusCode}');
    }
  }
}
