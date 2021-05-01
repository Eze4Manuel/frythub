import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new MaterialApp(
    title: Strings.appName,
    debugShowCheckedModeBanner: false,
    // routes: Routes.routes,
    // home: SplashScreen(),
  )));
}