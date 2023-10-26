class AppException implements Exception {
  final dynamic message;
  final String prefix;

  AppException([this.message, this.prefix = "Error: "]);

  @override
  String toString() {
    return "$prefix$message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([dynamic message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([dynamic message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([dynamic message]) : super(message, "Unauthorised: ");
}

class UnprocessableEntityException extends AppException {
  UnprocessableEntityException([dynamic message])
      : super(message, "Unprocessable Entity: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([dynamic message]) : super(message, "Invalid Input: ");
}
