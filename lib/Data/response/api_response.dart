import 'package:getx_mvvm/Data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  //loaing time
  ApiResponse.loading():status=Status.LOADING ; 
  //api heat completed
  ApiResponse.completed(this.data):status=Status.COMPLETED;
  //api heat in error time
  ApiResponse.error(this.message):status=Status.ERROR;


  @override
  String toString() {
    
    return "Status: $status\n Data:$data \n Message: $message";
  }
}
