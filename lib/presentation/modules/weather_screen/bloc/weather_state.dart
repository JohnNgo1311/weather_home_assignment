part of 'weather_bloc.dart';

// ViewModel is used for store all properties which want to be stored, processed and updated, chứa dữ liệu của 1 state
class _ViewModel {
  final WeatherForecastEntity? weatherForecastEntity;
  final List<WeatherForecastEntity>? weatherForecastEntities;
  final bool? isWifiDisconnect;
  final String? errorMessage;
  const _ViewModel(
      {this.isWifiDisconnect,
      this.weatherForecastEntity,
      this.weatherForecastEntities,
      this.errorMessage});

  // Using copyWith function to retains the before data and just "update some specific props" instead of "update all props"
  _ViewModel copyWith({
    final bool? isWifiDisconnect,
    final WeatherForecastEntity? weatherForecastEntity,
    final List<WeatherForecastEntity>? weatherForecastEntities,
    final String? errorMessage,
  }) {
    // ignore: unnecessary_this
    return _ViewModel(
        isWifiDisconnect: isWifiDisconnect ?? this.isWifiDisconnect,
        weatherForecastEntity:
            weatherForecastEntity ?? this.weatherForecastEntity,
        weatherForecastEntities:
            weatherForecastEntities ?? this.weatherForecastEntities,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

// Abstract class
abstract class WeatherState {
  // ignore: library_private_types_in_public_api
  final _ViewModel viewModel;
  // Status of the state. GetWeather "success" "failed" "loading"
  final BlocStatusState status;

  // ignore: library_private_types_in_public_api
  WeatherState(this.viewModel, {this.status = BlocStatusState.initial});

  // Using copyWith function to retains the before data and just "update some specific props" instead of "update all props"
  // "T" is generic class. "T" is a child class of GetWeatherState (abstract class)
  T copyWith<T extends WeatherState>({
    // ignore: library_private_types_in_public_api
    _ViewModel? viewModel,
    required BlocStatusState status,
  }) {
    return _factories[T == WeatherState ? runtimeType : T]!(
      viewModel ?? this.viewModel,
      status,
    );
  }
}

class GetWeatherInitialState extends WeatherState {
  GetWeatherInitialState({
    // ignore: library_private_types_in_public_api
    _ViewModel viewModel = const _ViewModel(),
    BlocStatusState status = BlocStatusState.initial,
  }) : super(viewModel, status: status);
}

class GetWeatherListState extends WeatherState {
  GetWeatherListState({
    // ignore: library_private_types_in_public_api
    _ViewModel viewModel = const _ViewModel(),
    BlocStatusState status = BlocStatusState.initial,
  }) : super(viewModel, status: status);
}

class GetWeatherInforState extends WeatherState {
  GetWeatherInforState({
    // ignore: library_private_types_in_public_api
    _ViewModel viewModel = const _ViewModel(),
    BlocStatusState status = BlocStatusState.initial,
  }) : super(viewModel, status: status);
}

final _factories = <Type,
    Function(
  _ViewModel viewModel,
  BlocStatusState status,
)>{
  GetWeatherInitialState: (viewModel, status) => GetWeatherInitialState(
        viewModel: viewModel,
        status: status,
      ),
  GetWeatherListState: (viewModel, status) => GetWeatherListState(
        viewModel: viewModel,
        status: status,
      ),
  GetWeatherInforState: (viewModel, status) => GetWeatherInforState(
        viewModel: viewModel,
        status: status,
      ),
};
