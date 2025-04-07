import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:nafa7at/core/api/api_consumer.dart';
import 'package:nafa7at/core/api/api_status_codes.dart';
import 'package:nafa7at/core/api/dio_log_interceptor.dart';
import 'package:nafa7at/core/constants/api_constants.dart';
import 'package:nafa7at/core/errors/exceptions.dart';
import 'package:nafa7at/core/injection/injection.dart';

class DioApiConsumer extends ApiConsumer {
  final Dio dioClient;

  DioApiConsumer({required this.dioClient}) {
    // Fix for dio handshake error
    (dioClient.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final dioClient = HttpClient();
      dioClient.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return dioClient;
    };
    // dio validation
    dioClient.options
      ..baseUrl = ApiConstants.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < ApiStatusCodes.internalServerError;
      };
    // dioClient.interceptors.add(getIt<DioTokenInterceptor>());
    if (kDebugMode) {
      dioClient.interceptors.add(getIt<DioLogInterceptor>());
    }
  }
  @override
  Future delete(
    String endPointPath, {
    Map<String, dynamic>? body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (userAccessToken != null) {
      if (headers != null) {
        headers["Authorization"] = "Bearer $userAccessToken";
      } else {
        headers = {"Authorization": "Bearer $userAccessToken"};
      }
    }
    try {
      final Response response = await dioClient.delete(
        endPointPath,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handelDioError(error);
    }
  }

  @override
  Future get(
    String endPointPath, {
    String? userAccessToken,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    if (userAccessToken != null) {
      if (headers != null) {
        headers["Authorization"] = "Bearer $userAccessToken";
      } else {
        headers = {"Authorization": "Bearer $userAccessToken"};
      }
    }
    try {
      final Response response = await dioClient.get(
        endPointPath,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handelDioError(error);
    }
  }

  @override
  Future patch(
    String endPointPath, {
    Map<String, dynamic>? body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (userAccessToken != null) {
      if (headers != null) {
        headers["Authorization"] = "Bearer $userAccessToken";
      } else {
        headers = {"Authorization": "Bearer $userAccessToken"};
      }
    }
    try {
      final Response response = await dioClient.patch(
        endPointPath,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handelDioError(error);
    }
  }

  @override
  Future post(
    String endPointPath, {
    body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (userAccessToken != null) {
      if (headers != null) {
        headers["Authorization"] = "Bearer $userAccessToken";
      } else {
        headers = {"Authorization": "Bearer $userAccessToken"};
      }
    }
    try {
      final Response response = await dioClient.post(
        endPointPath,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handelDioError(error);
    }
  }

  @override
  Future put(
    String endPointPath, {
    body,
    String? userAccessToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (userAccessToken != null) {
      if (headers != null) {
        headers["Authorization"] = "Bearer $userAccessToken";
      } else {
        headers = {"Authorization": "Bearer $userAccessToken"};
      }
    }
    try {
      final Response response = await dioClient.put(
        endPointPath,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _handleResponseAsJson(response);
    } on DioException catch (error) {
      _handelDioError(error);
    }
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    return jsonDecode(response.data.toString());
  }

  dynamic _handelDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        throw const NoInternetConnectionException();
      case DioExceptionType.connectionError:
        throw const NoInternetConnectionException();
      case DioExceptionType.sendTimeout:
        throw const NoInternetConnectionException();
      case DioExceptionType.receiveTimeout:
        throw const DataException();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case ApiStatusCodes.badRequest:
            throw const BadRequestException();
          case ApiStatusCodes.unauthorized:
          case ApiStatusCodes.forbidden:
            throw const UnauthorizedException();
          case ApiStatusCodes.notFound:
            throw const NotFoundException();
          case ApiStatusCodes.conflict:
            throw const ConflictException();
          case ApiStatusCodes.internalServerError:
            throw const InternalServerErrorException();
        }
        break;
      case DioExceptionType.badCertificate:
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw const NoInternetConnectionException();
    }
  }
}
