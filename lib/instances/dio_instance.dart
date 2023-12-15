import 'dart:developer';

import 'package:dio/dio.dart';

class DioInstance with DioMixin {
  DioInstance() {
    httpClientAdapter = HttpClientAdapter();
    options = BaseOptions(
        baseUrl: "http://127.0.0.1:3000", contentType: "application/json");
    interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        log("${options.method.toUpperCase()} : ${options.uri}");
        handler.next(options);
      },
      onResponse: (response, handler) {
        log("${response.statusCode} ${response.statusMessage}");
        log("${response.data}");
        handler.next(response);
      },
    ));
  }
}
