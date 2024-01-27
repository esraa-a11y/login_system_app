import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/features/authentication/screens/home.dart';
import 'package:login_system_app/features/authentication/screens/welcome_screen.dart';
class FadeInAnimationController extends GetxController{
  static FadeInAnimationController  get find=> Get.find();
  RxBool animate=false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds:500 ));
    animate.value=true;
    await Future.delayed(Duration(milliseconds:3000 ));
    animate.value=false;
    await Future.delayed(Duration(milliseconds:2000 ));

    Get.offAll(() => const WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds:500 ));
    animate.value=true;
    //Get.offAll(() => const WelcomeScreen());
  }


}