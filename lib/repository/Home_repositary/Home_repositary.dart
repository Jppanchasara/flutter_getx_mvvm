import 'package:getx_mvvm/Models/Home_model/Userlistmodel.dart';

import '../../Data/network/network_Api_Services.dart';
import '../../res/AppUrl/App_url.dart';

class HomeRepository {
  final _apiServices = networkApiServices();
  // ignore: non_constant_identifier_names
  Future<UserListModel> UserListApi() async {
    dynamic response = await _apiServices.getAPi(AppUrl.userlistUrl);
    return UserListModel.fromJson(response) ;
  }
}
