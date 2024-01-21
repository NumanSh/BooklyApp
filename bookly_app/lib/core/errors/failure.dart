import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'badCertificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            error.response!.statusCode, error.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(message: 'Cancel with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'No Internet with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure(message: 'Unknown with ApiServer');
    }
  }
  factory ServerFailure.fromBadResponse(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(message: 'Your request not Found');
    } else if (statusCode == 500) {
      return ServerFailure(message: 'Internal Server Error');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else {
      return ServerFailure(message: 'Unexpected Error');
    }
  }
}
