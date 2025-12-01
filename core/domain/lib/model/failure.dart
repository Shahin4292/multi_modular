
// error model that we expect from api
class Failure {
  int code; // 200, 201, 303, 404, 400, 500
  String message;
  Failure(this.code, this.message);

}