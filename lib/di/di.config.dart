// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../common/service/local_manager/local_data_manager.dart' as _i1006;
import '../common/service/navigation/navigation_service.dart' as _i64;
import '../data/data_source/remote/module_repositories/weather_api_repository/weather_api_repository.dart'
    as _i405;
import '../data/data_source/remote/module_repositories/weather_api_repository/weather_api_repository_impl.dart'
    as _i925;
import '../domain/network/network_info.dart' as _i962;
import '../domain/repositories/weather_repository/weather_forecast_repository.dart'
    as _i995;
import '../domain/repositories/weather_repository/weather_forecast_repository.impl.dart'
    as _i971;
import '../domain/usecases/weather_forecast_usecase/weather_forecast_usecase.dart'
    as _i520;
import '../domain/usecases/weather_forecast_usecase/weather_forecast_usecase.impl.dart'
    as _i683;
import '../presentation/modules/weather_screen/bloc/weather_bloc.dart' as _i305;
import 'di.dart' as _i913;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioProvider = _$DioProvider();
  final appModule = _$AppModule();
  gh.singleton<_i64.NavigationService>(() => _i64.NavigationService());
  gh.singleton<_i361.Dio>(() => dioProvider.dio());
  gh.singletonAsync<_i1006.LocalDataManager>(() => appModule.localDataManager);
  gh.singleton<_i895.Connectivity>(() => appModule.connectivity);
  gh.factory<_i962.NetworkInfo>(() => _i962.NetworkInfoImpl());
  gh.factory<_i405.WeatherApiRepository>(
      () => _i925.WeatherApiRepositoryImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i995.WeatherRepository>(
      () => _i971.WeatherRepositoryImpl(gh<_i405.WeatherApiRepository>()));
  gh.factory<_i520.WeatherUsecase>(
      () => _i683.WeatherUsecaseImpl(gh<_i995.WeatherRepository>()));
  gh.factory<_i305.WeatherBloc>(() => _i305.WeatherBloc(
        gh<_i520.WeatherUsecase>(),
        gh<_i962.NetworkInfo>(),
      ));
  return getIt;
}

class _$DioProvider extends _i913.DioProvider {}

class _$AppModule extends _i913.AppModule {}
