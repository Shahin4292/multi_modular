import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final String baseUrl;
  final  String accessToken;
  final String language;

  DioFactory({required this.baseUrl,
      required this.accessToken,
      required this.language});

  Future<Dio> getDio()async{
    Dio dio = Dio();
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: "your_access_token", // todo get access token here
      defaultLanguage: "app language", // todo get app language here
      clientId: "app_client_id", // todo get client id here
    };

    dio.options = BaseOptions(
      baseUrl: "your_base_url", // todo get base url from config
      headers: headers,
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
    );

    // add logger in debug mode only Not released yet
    if(!kReleaseMode){
      dio.interceptors.add(PrettyDioLogger(
        requestHeader : true,
        requestBody : true,
        responseHeader : true,
      ));
    }
    return dio;
  }
}