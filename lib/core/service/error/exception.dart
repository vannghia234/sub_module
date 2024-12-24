abstract class APIServiceException implements Exception {}

// 500
class ServerErrorException extends APIServiceException {}

class NotFoundException extends APIServiceException {}

class ForbiddenException extends APIServiceException {}

class BadRequestException extends APIServiceException {
  final String? errorText;

  BadRequestException({this.errorText});
}

class DataParsingException extends APIServiceException {}
