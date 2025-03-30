import 'package:injectable/injectable.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

@module
abstract class InjectionModel {
  @singleton
  AppRouter get appRouter => AppRouter();
}
