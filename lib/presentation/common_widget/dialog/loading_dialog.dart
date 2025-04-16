import 'package:flutter/material.dart';
import 'package:weather_app/presentation/theme/theme_color.dart';
import 'package:weather_app/utils/size_config.dart';

Future<dynamic> showLoadingDialog({
  required BuildContext context,
}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      // Wrap the dialog in a WillPopScope widget to intercept back button
      return PopScope(
        canPop: false,
        onPopInvokedWithResult: null,
        // Prevent back navigation while the loading dialog is displayed

        child: Center(
          child: SizedBox(
            height: SizeConfig.screenDiagonal * 0.05,
            width: SizeConfig.screenDiagonal * 0.05,
            child: CircularProgressIndicator(
              color: AppColor.white,
              strokeWidth: SizeConfig.screenWidth * 0.01,
            ),
          ),
        ),
      );
    },
  );
}
