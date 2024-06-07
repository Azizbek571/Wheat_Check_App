import 'package:dio/dio.dart';
import 'package:wheat_check/config/my_interseptors.dart';

class MyDio{
  final Dio _dio = Dio();
  MyDio(){
    _dio.interceptors.add(MyInterceptor());
  }
  Dio dio(){
    return _dio;
  }
}