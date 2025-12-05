
import 'package:datastore/provider/session/session_provider_imp.dart';
import 'package:dio/dio.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  var session = DevSessionProviderImp();
  Dio dio = Dio();
}
