import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fryghthub/app/ui/pages/onboarding.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new GetMaterialApp(
    title: Strings.appName,
    debugShowCheckedModeBanner: false,
    // routes: Routes.routes,
    home: Onboarding(),
  )));
}