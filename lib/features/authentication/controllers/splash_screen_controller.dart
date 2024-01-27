import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/features/authentication/screens/home.dart';
class SplashScreenController extends GetxController{
  static SplashScreenController get find=> Get.find();
  RxBool animate=false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds:500 ));

      animate.value=true;

    await Future.delayed(Duration(milliseconds:5000 ));
    Get.to(const HomePage());
   // Get.to(HomePage());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));

  }

}