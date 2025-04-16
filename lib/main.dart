import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

import 'package:weather_app/presentation/route/route_list.dart';
import 'package:weather_app/presentation/theme/theme_color.dart';

import 'assets/assets.dart';
import 'assets/languages/app_localizations.dart';
import 'classes/language.dart';
import 'common/service/navigation/navigation_observer.dart';
import 'common/service/navigation/navigation_service.dart';
import 'di/di.dart';
import 'presentation/modules/weather_screen/weather_profile/weather_config.dart';
import 'presentation/route/route.dart';
// import 'package:weather_app/common/service/firebase/firebase_options.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    const MyApp(),
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    setLocale(const Locale('en'));
    MyApp.setLocale(context, const Locale('en'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: FToastBuilder(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      navigatorKey: injector<NavigationService>().navigatorKey,
      navigatorObservers: [myNavigatorObserver],
      debugShowCheckedModeBanner: false,
      title: 'Weather Application',
      onGenerateRoute: AppRoute.onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      // ignore: use_build_context_synchronously
      fetchLocation(context);
      // if (!mounted) return;
      // Navigator.pushNamed(context, RouteList.weatherList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Center(
          child: Image.asset(
            Assets.icSunny,
            scale: 3,
          ),
        ),
      ),
    );
  }
}

void fetchLocation(BuildContext context) async {
  try {
    Position? position = await getUserLocation();
    if (position != null) {
      WeatherConfig.defaultLat = position.latitude.toString();
      WeatherConfig.defaultLon = position.longitude.toString();
      print("Latitude: ${position.latitude}, Longitude: ${position.longitude}");
      // Navigate to the weather screen
      if (context.mounted) {
        Navigator.pushNamed(context, RouteList.weatherList);
      }
    } else {
      Fluttertoast.showToast(
          msg: "Unable to fetch location. Using default coordinates.");
    }
  } catch (e) {
    Fluttertoast.showToast(msg: "Error getting location: $e");
    print("Error getting location: $e");
  }
}

Future<Position?> getUserLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Check if location services are enabled
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Prompt user to enable location services
    await Geolocator.openLocationSettings();
    return Future.error('Location services are disabled. Please enable them.');
  }

  // Check and request permissions
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Prompt user to open app settings
    await Geolocator.openAppSettings();
    return Future.error('Location permissions are permanently denied.');
  }

  // Fetch location
  return await Geolocator.getCurrentPosition(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
      timeLimit: Duration(seconds: 5),
    ),
  );
}
