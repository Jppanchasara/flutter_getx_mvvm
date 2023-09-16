

abstract class BaseApiServices {

  //Get Api
  Future<dynamic> getAPi(String url);
  
  //post Api
  Future<dynamic> postAPi(dynamic data, String url);
}
