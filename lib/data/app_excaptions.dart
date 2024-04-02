class AppExcaption implements Exception {
  final _message;
  final _prefix;
  AppExcaption([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppExcaption {
  FetchDataException([
    String? messagge,
  ]) : super(messagge, 'Error During Communication');
}

class BadRequestException extends AppExcaption {
  BadRequestException([String? messagge]) : super(messagge, 'Invalid request');
}

class UnauthorisedException extends AppExcaption {
  UnauthorisedException([String? messagge])
      : super(messagge, 'Unauthorised request');
}

class InvalidInputException extends AppExcaption {
  InvalidInputException([String? messagge]) : super(messagge, 'Invalid Input');
}
