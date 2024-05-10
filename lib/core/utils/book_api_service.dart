import 'package:dio/dio.dart';

class BookApiService {
  final baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  BookApiService({
    required this.dio,
  });
  Future<Map<String, dynamic>> fetchBooks({required String endPoint}) async {
    var response = await dio.get("$baseURL$endPoint");
    return response.data;
  }
}
