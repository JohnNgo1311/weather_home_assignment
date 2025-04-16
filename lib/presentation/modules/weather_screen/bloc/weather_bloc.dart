import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/classes/language.dart';
import 'package:weather_app/domain/entities/weather_forecast_entity.dart';
import 'package:weather_app/domain/network/network_info.dart';
import 'package:weather_app/domain/usecases/weather_forecast_usecase/weather_forecast_usecase.dart';
import '../../../../common/singletons.dart';
import '../../../common_widget/enum_common.dart';

part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherUsecase _weatherUsecase;
  final NetworkInfo _networkInfo;

  WeatherBloc(
    this._weatherUsecase,
    this._networkInfo,
  ) : super(GetWeatherInitialState()) {
    on<GetWeatherListEvent>(_handleGetWeatherList);
    on<GetWeatherInforEvent>(_handleGetWeatherInfo);
  }

  Future<void> _handleGetWeatherList(
    GetWeatherListEvent event,
    Emitter<WeatherState> emit,
  ) async {
    if (await _networkInfo.isConnected) {
      emit(
        GetWeatherListState(
          status: BlocStatusState.loading,
          viewModel: state.viewModel,
        ),
      );
      try {
        final response = await _weatherUsecase.getWeatherListEntity();
        final weatherForecastEntities = response;
        emit(GetWeatherListState(
          status: BlocStatusState.success,
          viewModel:
              _ViewModel(weatherForecastEntities: weatherForecastEntities),
        ));
      } catch (e) {
        emit(GetWeatherListState(
          status: BlocStatusState.failure,
          viewModel: _ViewModel(
              errorMessage:
                  translation(navigationService.navigatorKey.currentContext!)
                      .error),
        ));
      }
    } else {
      emit(
        GetWeatherListState(
          status: BlocStatusState.failure,
          viewModel: _ViewModel(
              isWifiDisconnect: true,
              errorMessage:
                  translation(navigationService.navigatorKey.currentContext!)
                      .wifiDisconnect),
        ),
      );
    }
  }

  Future<void> _handleGetWeatherInfo(
    GetWeatherInforEvent event,
    Emitter<WeatherState> emit,
  ) async {
    if (await _networkInfo.isConnected) {
      emit(
        GetWeatherInforState(
          status: BlocStatusState.loading,
          viewModel: state.viewModel,
        ),
      );
      try {

        
        final weatherForecastEntity = await _weatherUsecase.getWeatherEntity(
          lat: event.lat,
          lon: event.lon,
          apiKey: event.apiKey,
        );

        emit(GetWeatherInforState(
          status: BlocStatusState.success,
          viewModel: _ViewModel(
            weatherForecastEntity: weatherForecastEntity,
          ),
        ));
      } catch (e) {
        emit(GetWeatherInforState(
          status: BlocStatusState.failure,
          viewModel: _ViewModel(
            errorMessage:
                translation(navigationService.navigatorKey.currentContext!)
                    .error,
          ),
        ));
      }
    } else {
      emit(
        GetWeatherInforState(
          status: BlocStatusState.failure,
          viewModel: _ViewModel(
            isWifiDisconnect: true,
            errorMessage:
                translation(navigationService.navigatorKey.currentContext!)
                    .wifiDisconnect,
          ),
        ),
      );
    }
  }
}
