// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nafa7at/core/injection/injection_model.dart' as _i46;
import 'package:nafa7at/settings/routes/app_routes.dart' as _i796;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModel = _$InjectionModel();
    gh.singleton<_i796.AppRouter>(() => injectionModel.appRouter);
    return this;
  }
}

class _$InjectionModel extends _i46.InjectionModel {}
