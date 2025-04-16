import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:weather_app/presentation/modules/weather_screen/bloc/weather_bloc.dart';
import 'package:weather_app/utils/size_config.dart';
import 'custom_bottom_sheet.dart';
import 'weather_app_theme.dart';

class WeatherSuccessWidget extends StatelessWidget {
  final WeatherState weatherState;
  final VoidCallback onRefresh;

  const WeatherSuccessWidget({
    super.key,
    required this.weatherState,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final forecast = weatherState.viewModel.weatherForecastEntity;
    final dailyForecasts = forecast?.dailyForecastEntities ?? [];
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      controller: RefreshController(),
      onRefresh: () {
        onRefresh();
      },
      child: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(56),
            Text(
              dailyForecasts.isNotEmpty
                  ? '${dailyForecasts.first.temp?.setCelsiusTemp().toStringAsFixed(2) ?? 'N/A'}°'
                  : 'N/A°',
              style: WeatherAppTheme.theme.textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              forecast?.cityEntity?.name ?? 'Unknown',
              style: WeatherAppTheme.theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            // RectangleButton(
            //   shadowColor: Colors.black54,
            //   textColor: AppColor.white,
            //   buttonColor: const Color(0xff4A4A4A),
            //   height: SizeConfig.screenHeight * 0.052,
            //   width: SizeConfig.screenWidth * 0.4,
            //   title: translation(context).loadAgain,
            //   onTap: () => onRefresh(),
            // ),
            Gap(62),
            Expanded(
              child: CustomBottomSheet(
                items: weatherState
                    .viewModel.weatherForecastEntity!.dailyForecastEntities!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class ForecastItem extends StatelessWidget {
//   final DailyForecastEntity forecast;

//   const ForecastItem({super.key, required this.forecast});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           forecast.dt.toString(), // Consider formatting date
//           style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                 color: AppColor.textPrimary,
//               ),
//         ),
//         Text(
//           '${forecast.temp?.day ?? 'N/A'}°',
//           style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                 color: AppColor.textPrimary,
//               ),
//         ),
//       ],
//     );
//   }
