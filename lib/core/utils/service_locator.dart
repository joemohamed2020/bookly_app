import 'package:bookly_app/core/utils/book_api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';

abstract class ServiceLocator {
  static final Dio dio = Dio();
  static final BookApiService apiService = BookApiService(dio);
  static final HomeRepoImpl homeRepoImpl = HomeRepoImpl(apiService);
}
