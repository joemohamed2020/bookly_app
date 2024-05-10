import 'package:dio/dio.dart';

class BookApiService {
  final _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  BookApiService(
    this._dio,
  );
  Future<Map<String, dynamic>> fetchBooks({required String endPoint}) async {
    var response = await _dio.get("$_baseURL$endPoint");
    return response.data;
  }
}
