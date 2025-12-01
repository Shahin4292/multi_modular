class ResponseCode {
  static const int success = 200;
  static const int created = 201;
  static const int accepted = 202;
  static const int noContent = 204;

  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int methodNotAllowed = 405;
  static const int conflict = 409;
  static const int unprocessableEntity = 422;

  static const int internalServerError = 500;
  static const int notImplemented = 501;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;

  static const int connectTimeOut = -1;
  static const int receiveTimeOut = -2;
  static const int sendTimeOut = -3;
  static const int canceled = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultError = -7;
}