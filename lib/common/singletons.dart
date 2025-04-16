import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import '../di/di.dart';
import 'service/navigation/navigation_service.dart';

NavigationService get navigationService => injector<NavigationService>();
@lazySingleton
FToast get fToast {
  FToast fToast = FToast();
  fToast = fToast.init(navigationService.navigatorKey.currentContext!);
  return fToast;
}
