import 'dart:developer';

import 'package:getx_mvvm/Data/network/network_Api_Services.dart';
import 'package:getx_mvvm/res/AppUrl/App_url.dart';

class LoginRepository {
  final _apiServices = networkApiServices();
  // ignore: non_constant_identifier_names
  Future<dynamic> LoginApi(var data) async {
    dynamic response = await _apiServices.postAPi(data, AppUrl.baseurl);
    log('*************************');
    
    return response;
  }
}
