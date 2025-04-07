import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:nafa7at/core/api/api_consumer.dart';
import 'package:nafa7at/core/api/dio_consumer.dart';
import 'package:nafa7at/core/api/dio_log_interceptor.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

@module
abstract class InjectionModel {
  @singleton
  AppRouter get appRouter => AppRouter();

  // @singleton
  // DioTokenInterceptor get tokenInterceptor => DioTokenInterceptor();

  @singleton
  DioLogInterceptor get dioLogInterceptor => DioLogInterceptor();

  @factory
  Dio get dioClient => Dio();

  @LazySingleton(as: ApiConsumer)
  DioApiConsumer get dioConsumer => DioApiConsumer(dioClient: dioClient);
}
