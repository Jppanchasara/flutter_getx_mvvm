import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/View/Home/Home_Scereen.dart';
import 'package:getx_mvvm/View/login/login_view.dart';
import 'package:getx_mvvm/View/prctice/pracitce.dart';
import 'package:getx_mvvm/View/splash_screen.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';



// ignore: camel_case_types
class appRoutes {
  // ignore: non_constant_identifier_names
  static Approutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 250)
        ),
        GetPage(
          name: RoutesName.loginScreen,
          page: () => const LoginView(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 250)
        ),
        GetPage(
          name: RoutesName.HomeScreen, 
          page: ()=>HomeScreen(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(milliseconds: 250)
        ),
        GetPage(
          name: RoutesName.Practice, 
          page: ()=>Practice(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(milliseconds: 250)
        ),
        
      ];
}

 

