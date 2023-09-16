import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/View/splash_screen.dart';
import 'package:getx_mvvm/res/getx_loclization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       theme: ThemeData.light(useMaterial3: true),
      translations: Languages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      title: 'Flutter Demo',
      
      
      getPages: appRoutes.Approutes(),
    );
  }
}
