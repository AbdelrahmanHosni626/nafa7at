// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nafa7at/core/api/api_consumer.dart' as _i980;
import 'package:nafa7at/core/api/dio_log_interceptor.dart' as _i1018;
import 'package:nafa7at/core/injection/injection_model.dart' as _i46;
import 'package:nafa7at/features/home/cubits/home_cubit/home_cubit.dart'
    as _i245;
import 'package:nafa7at/features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i610;
import 'package:nafa7at/features/home/data/data_sources/remote/home_remote_data_source_impl.dart'
    as _i320;
import 'package:nafa7at/features/home/data/repositories/home_repository/home_repository.dart'
    as _i694;
import 'package:nafa7at/features/home/data/repositories/home_repository/home_repository_impl.dart'
    as _i264;
import 'package:nafa7at/settings/routes/app_routes.dart' as _i796;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModel = _$InjectionModel();
    gh.factory<_i361.Dio>(() => injectionModel.dioClient);
    gh.singleton<_i796.AppRouter>(() => injectionModel.appRouter);
    gh.singleton<_i1018.DioLogInterceptor>(
      () => injectionModel.dioLogInterceptor,
    );
    gh.lazySingleton<_i980.ApiConsumer>(() => injectionModel.dioConsumer);
    gh.lazySingleton<_i610.HomeRemoteDataSource>(
      () => _i320.HomeRemoteDataSourceImpl(gh<_i980.ApiConsumer>()),
    );
    gh.lazySingleton<_i694.HomeRepository>(
      () => _i264.HomeRepositoryImpl(gh<_i610.HomeRemoteDataSource>()),
    );
    gh.factory<_i245.HomeCubit>(
      () => _i245.HomeCubit(gh<_i694.HomeRepository>()),
    );
    return this;
  }
}

class _$InjectionModel extends _i46.InjectionModel {}
