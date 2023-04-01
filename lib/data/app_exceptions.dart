class AppExceptions implements Exception {
  final message;
  final _prefix;
  AppExceptions(this.message, this._prefix);

  String toString() {
    return '$_prefix$message';
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions([String? message]) : super(message, "No Internet");
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, "Request TimeOut");
}

class ServerExceptions extends AppExceptions {
  ServerExceptions([String? message]) : super(message, "Request TimeOut");
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message])
      : super(message, "Invalid Url Exception");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, "Error While Fetching Data");
}
