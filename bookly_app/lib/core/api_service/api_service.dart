import 'package:dio/dio.dart';

class ApiServise {
  final Dio _dio;
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServise({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> get(String path) async {
    var response = await _dio.get('$_baseUrl$path');
    return response.data;
  }
}
