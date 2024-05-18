import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout With Api Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout With Api Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout With Api Server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate...");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Your Request Is Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Something Went Wrong, Please Try Again Later.");
      default:
        return ServerFailure("Something Went Wrong, Please Try Again Later.");
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 401 || statusCode == 400 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Method Not Found!!!!, Please Try Again Later.");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, Please Try Again Later.");
    } else {
      return ServerFailure("Something Went Wrong, Please Try Again Later.");
    }
  }
}
