import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wheat_check/pages/addInfoPages.dart';
import 'package:wheat_check/pages/exports.dart';
import 'package:wheat_check/pages/login_page.dart';

class MyInterceptor extends Interceptor {
  MyInterceptor();
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      Get.offAll(() => HomePage());
      return;
    }
    super.onError(err, handler);
  }
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var token = await GetStorage().read('token');
    options.headers['Authorization'] = 'Bearer $token';
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.baseUrl = dotenv.env['BASE_URL'].toString();
    super.onRequest(options, handler);
  }
}