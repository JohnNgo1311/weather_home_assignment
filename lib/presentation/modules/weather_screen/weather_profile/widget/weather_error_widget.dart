import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/utils/size_config.dart';
import '../../../../../classes/language.dart';
import '../../../../common_widget/rectangle_button.dart';
import '../../../../theme/theme_color.dart';

class WeatherErrorWidget extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetry;

  const WeatherErrorWidget({
    super.key,
    required this.errorMessage,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            softWrap: true,
            textAlign: TextAlign.center,
            translation(context).errorAtTheEnd,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300, // Thin weight
              fontSize: 54,
              color: Colors.white,
            ),
          ),
          const Gap(44),
          RectangleButton(
            shadowColor: Colors.black54,
            textColor: AppColor.white,
            buttonColor: const Color(0xff4A4A4A),
            height: SizeConfig.screenHeight * 0.052,
            width: SizeConfig.screenWidth * 0.4,
            title: translation(context).loadAgain,
            onTap: () => onRetry(),
          ),
        ],
      ),
    );
  }
}
