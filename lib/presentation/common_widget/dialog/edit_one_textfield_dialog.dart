import 'package:flutter/material.dart';
import 'package:weather_app/utils/size_config.dart';

import '../../../classes/language.dart';
import '../../theme/theme_color.dart';

//! Delete Patient  - DONE
//! Delete Relative - DONE
//! Delete Doctor   - DONE
//! Log Out - DONE
//! Exit App - DONE

Future<dynamic> showEditOneTextFieldDialog({
  required BuildContext context,
  required String message,
  required String? title,
  required String? titleBtn1,
  required String? titleBtn2,
  bool barrierDismissible = false,
  Function()? onClose1,
  Function()? onClose2,
  required TextEditingController? editingController,
  bool useRootNavigator = false,
  bool dismissWhenAction = true,
  double? contentDialogSize,
}) {
  dismissFunc() {
    if (dismissWhenAction) {
      Navigator.of(context, rootNavigator: useRootNavigator).pop();
    }
  }

  return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      builder: (context) {
        return AlertDialog(
          // shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(2))),
          backgroundColor: AppColor.white,
          contentPadding: EdgeInsets.zero,
          content: Container(
            height: SizeConfig.screenHeight * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.screenWidth * 0.05)),
              color: AppColor.white,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  height: SizeConfig.screenHeight * 0.1,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SizeConfig.screenWidth * 0.05),
                        topRight:
                            Radius.circular(SizeConfig.screenWidth * 0.05)),
                    color: AppColor.warningDialogColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: SizeConfig.screenDiagonal * 0.04,
                          height: SizeConfig.screenDiagonal * 0.04,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.white),
                          child: Icon(
                            size: SizeConfig.screenDiagonal * 0.04,
                            Icons.help,
                            color: AppColor.warningDialogIconColor,
                          )),
                      const SizedBox(
                        height: 3,
                      ),
                      Text("$title?",
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenDiagonal * 0.018),
                          textAlign: TextAlign.center),
                    ],
                  )),
              Stack(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
                    height: SizeConfig.screenHeight * 0.15,
                    width: SizeConfig.screenWidth * 0.72,
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: contentDialogSize ??
                              SizeConfig.screenDiagonal * 0.018),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.screenHeight * 0.085,
                    left: SizeConfig.screenWidth * 0.04,
                    right: SizeConfig.screenWidth * 0.04,
                    child: SizedBox(
                      width: SizeConfig.screenWidth * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (useRootNavigator == false) {
                                dismissFunc.call();
                              }

                              onClose1?.call();
                            },
                            child: Container(
                              width: SizeConfig.screenWidth * 0.25,
                              height: SizeConfig.screenHeight * 0.055,
                              decoration: const BoxDecoration(
                                  color: AppColor.graybebebe,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  titleBtn1 ?? translation(context).accept,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.screenDiagonal * 0.02,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (useRootNavigator == false) {
                                dismissFunc.call();
                              }
                              onClose2?.call();
                            },
                            child: Container(
                              width: SizeConfig.screenWidth * 0.25,
                              height: SizeConfig.screenHeight * 0.055,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 118, 184, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  titleBtn2 ?? translation(context).accept,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.05,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        );
      });
}

// TextField(
//                                               controller:
//                                                   editBloogSugarController,
//                                               style: TextStyle(
//                                                 fontSize:
//                                                     SizeConfig.screenWidth *
//                                                         0.05,
//                                                 color: Colors.black,
//                                               ),
//                                               decoration: InputDecoration(
//                                                 border: InputBorder.none,
//                                                 labelText: translation(context)
//                                                     .bloodSugar,
//                                                 labelStyle: TextStyle(
//                                                     color: AppColor.gray767676,
//                                                     fontSize:
//                                                         SizeConfig.screenWidth *
//                                                             0.05),
//                                               ),
//                                             ),
