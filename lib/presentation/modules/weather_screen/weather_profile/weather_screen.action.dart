part of 'weather_screen.dart';

// ignore: library_private_types_in_public_api

extension WeatherScreenAction on _WeatherScreenState {
  void _blocListener(BuildContext context, WeatherState state) {
    //? Loading
    if (state.status == BlocStatusState.initial) {
      if (state is GetWeatherInforState) {}
    }

    //? Loading
    if (state.status == BlocStatusState.loading) {
      if (state is GetWeatherInforState) {
        showToast(
            context: context,
            status: ToastStatus.loading,
            toastString: translation(context).loadingData);
      }
    }
    //? Success
    if (state.status == BlocStatusState.success) {
      if (state is GetWeatherInforState) {
        showToast(
            context: context,
            status: ToastStatus.success,
            toastString: translation(context).dataLoaded);
      }
    }
    //? Failure
    if (state.status == BlocStatusState.failure) {
      if (state is GetWeatherInforState) {
        showToast(
            context: context,
            status: ToastStatus.error,
            toastString: translation(context).error);
        //   showExceptionDialog(
        //       context: context,
        //       message: state.viewModel.errorMessage!,
        //       titleBtn: translation(context).exit);
        // }
      }
    }
  }
}
