import 'package:domain/model/localised_message.dart';

// error model that we expect from api
class Failure {
  int code; // 200, 201, 303, 404, 400, 500
  LocalisedMessage message;
  Failure(this.code, this.message);

}