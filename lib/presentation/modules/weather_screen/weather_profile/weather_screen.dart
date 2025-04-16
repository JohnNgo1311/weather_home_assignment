import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:weather_app/presentation/common_widget/arrowLoader.dart';
import 'package:weather_app/utils/size_config.dart';
import '../../../../classes/language.dart';
import '../../../common_widget/dialog/show_toast.dart';
import '../../../common_widget/enum_common.dart';
import '../../../common_widget/screen_form/custom_screen.dart';
import '../../../theme/theme_color.dart';
import '../bloc/weather_bloc.dart';
import 'weather_config.dart';
import 'widget/weather_error_widget.dart';
import 'widget/weather_success_widget.dart';

part 'weather_screen.action.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherBloc get weatherBloc => BlocProvider.of(context);

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
  }



  void _fetchWeatherData() {
    weatherBloc.add(GetWeatherInforEvent(
      lat: WeatherConfig.defaultLat,
      lon: WeatherConfig.defaultLon,
      apiKey: WeatherConfig.apiKey,
    ));
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context); // Initialize once
    return CustomScreen(
      isScrollable: false,
      backgroundColor: context.select<WeatherBloc, Color>(
        (bloc) => bloc.state is GetWeatherInforState &&
                (bloc.state as GetWeatherInforState).status ==
                    BlocStatusState.failure
            ? AppColor.errorRed
            : AppColor.background,
      ),
      child: SizedBox(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: _blocListener,
          builder: (context, state) {
            if (state is GetWeatherInitialState) {
              _fetchWeatherData();
            }
            if (state is GetWeatherInforState) {
              switch (state.status) {
                case BlocStatusState.initial:
                  return Center(child: const ArrowLoader());
                case BlocStatusState.loading:
                  return Center(child: const ArrowLoader());
                case BlocStatusState.success:
                  return WeatherSuccessWidget(
                    weatherState: state,
                    onRefresh: () => _fetchWeatherData(),
                  );
                case BlocStatusState.failure:
                  return WeatherErrorWidget(
                    errorMessage: state.viewModel.errorMessage ??
                        translation(context).error,
                    onRetry: () => _fetchWeatherData(),
                  );
              }
            }
            return Container();
          },
        ),
      ),
    );
  }
}
