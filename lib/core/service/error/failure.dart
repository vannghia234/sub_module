import 'exception.dart';

abstract class Failure {}

class ServerFailure extends Failure {}

class NotFoundFailure extends Failure {}

class ForbiddenFailure extends Failure {}

class BadRequestFailure extends Failure {
  final String? errorText;

  BadRequestFailure({this.errorText});
}

class DataParsingFailure extends Failure {}

Failure converExceptionToFailure(Object exception) {
  if (exception is ServerErrorException) return ServerFailure();
  if (exception is NotFoundException) return NotFoundFailure();
  if (exception is ForbiddenException) return ForbiddenFailure();
  if (exception is BadRequestException)
    return BadRequestFailure(errorText: exception.errorText);
  return DataParsingFailure();
}
