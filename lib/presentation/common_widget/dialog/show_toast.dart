import 'package:flutter/material.dart';
import 'package:weather_app/common/singletons.dart';
import 'package:weather_app/presentation/common_widget/enum_common.dart';
import 'package:weather_app/presentation/theme/theme_color.dart';
import 'package:weather_app/utils/size_config.dart';

// void showToast(String message) {
//   Fluttertoast.cancel();
//   Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: const Color(0xffCCECF9),
//     textColor: Colors.black,
//     fontSize: 12.0,
//   );
// }

void showToast({String? toastString, ToastStatus? status, context}) {
  SizeConfig.init(context);
  Widget toastIcon = Container(
    width: SizeConfig.screenDiagonal * 0.03,
    height: SizeConfig.screenDiagonal * 0.03,
    decoration:
        const BoxDecoration(shape: BoxShape.circle, color: AppColor.white),
    child: Icon(
        size: SizeConfig.screenDiagonal * 0.028,
        (status == ToastStatus.success)
            ? Icons.check_circle
            : (status == ToastStatus.loading)
                ? Icons.autorenew
                : Icons.error,
        color: (status == ToastStatus.success)
            ? const Color.fromARGB(255, 77, 188, 142)
            : (status == ToastStatus.loading)
                ? const Color.fromARGB(255, 3, 169, 194)
                : AppColor.exceptionDialogIconColor),
  );
  Widget toastStatus = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: (status == ToastStatus.success)
            ? AppColor.successToastColor
            : (status == ToastStatus.loading)
                ? AppColor.loadingToastColor
                : AppColor.errorToastColor),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        toastIcon,
        SizedBox(
          width: SizeConfig.screenWidth * 0.02,
        ),
        Text(
          toastString ?? "",
          style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.04,
              color: AppColor.white,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
  fToast.removeCustomToast();
  fToast.showToast(
      child: toastStatus,
      toastDuration: const Duration(milliseconds: 1000),
      positionedToastBuilder: (context, child, gr) {
        return Positioned(
            bottom: SizeConfig.screenHeight * 0.1,
            left: SizeConfig.screenWidth * 0.01,
            right: SizeConfig.screenWidth * 0.01,
            child: child);
      });
}
