import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Data/app_exceptions.dart';
import 'package:getx_mvvm/Utils/utils.dart';
import 'package:getx_mvvm/View_Models/services/splash_services.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/componets/Round_button.dart';
import 'package:getx_mvvm/res/componets/general_exception_widgets.dart';
import 'package:getx_mvvm/res/componets/internet_exception_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.IsLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text(
          'Welcome_back',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
