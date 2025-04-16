import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../modules/weather_screen/bloc/weather_bloc.dart';
import '../modules/weather_screen/weather_profile/weather_screen.dart';

class AppRoute {
  static GetIt getIt = GetIt.instance;
  static Connectivity connectivity = getIt<Connectivity>();

  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/weatherList':
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider<WeatherBloc>(
              create: (context) => getIt<WeatherBloc>(),
              child: WeatherScreen(),
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider<WeatherBloc>(
              create: (context) => getIt<WeatherBloc>(),
              child: WeatherScreen(),
            );
          },
        );
    }
  }
}
