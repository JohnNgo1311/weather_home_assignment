import 'package:flutter/material.dart';
import 'package:weather_app/presentation/theme/theme_color.dart';

class WeatherAppTheme {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 96,
              fontFamily: 'Roboto-Black',
              height: 1.2,
              letterSpacing: 0,
              color: AppColor.textCurrentTemp),
          headlineMedium: TextStyle(
              fontSize: 36,
              fontFamily: 'Roboto-Thin',
              fontWeight: FontWeight.w300,
              height: 1.4,
              letterSpacing: 0,
              color: AppColor.textCurrentLocation),
          bodyMedium: TextStyle(
              fontSize: 16,
              fontFamily: 'Roboto-Regular',
              height: 1.2,
              letterSpacing: 0,
              color: AppColor.textCurrentTemp),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColor.white,
            backgroundColor: AppColor.buttonDark,
          ),
        ),
      );
}
