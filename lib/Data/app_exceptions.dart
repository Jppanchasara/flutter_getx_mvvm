class AppException implements Exception {
  // ignore: prefer_typing_uninitialized_variables
  final _message;
  // ignore: prefer_typing_uninitialized_variables
  final _prefix;

  AppException([this._message, this._prefix]);

  String toStrings() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Internal Server Error');
}

class InvalidException extends AppException {
  InvalidException([String? message]) : super(message, 'Invalid Url');
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error while communication');
}
