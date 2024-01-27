import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/constants/colors.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/constants/text_strings.dart';
import 'package:login_system_app/features/authentication/controllers/fade_in_animation_controller.dart';
import 'package:login_system_app/features/authentication/controllers/splash_screen_controller.dart';
import 'package:login_system_app/features/authentication/models/fade_in_animation_model.dart';
import 'package:login_system_app/features/authentication/screens/home.dart';

import '../../../widgets/animation_design.dart';
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController =Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final Controller=Get.put(FadeInAnimationController());
    Controller.startSplashAnimation();
    return Scaffold(
      body:Stack(
          children: [
            TFadeinAnimation(durationInMs: 16000,
              child: Image(image: AssetImage(tSplashTopIcon),),
              animatePosition: TAnimatePosition(
              topAfter: 0,
                topBefore: -30,
                leftBefore: -30,
                leftAfter: 0,
            ),
            ),
            TFadeinAnimation(
              durationInMs: 2000,
              animatePosition: TAnimatePosition(
                topBefore: 80,
                topAfter: 80,
                leftBefore: -80,
                leftAfter: tDefaultSize,
              ),
              child: Obx(
                    ()=> AnimatedPositioned(
                  top: 80,
                  left: splashController.animate.value? tDefaultSize : -80,
                  duration: const Duration(milliseconds: 1600),
                  child:AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),

                    opacity: splashController.animate.value? 1:0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(tAppName,style: Theme.of(context).textTheme.headline3,),
                      Text(tAppTagLine,style: Theme.of(context).textTheme.headline2,),
                    ],),
                  ),
                ),
              ),
            ),
            TFadeinAnimation(
              durationInMs: 2400,
              animatePosition: TAnimatePosition(
                bottomBefore: -130,
                bottomAfter: 130,
                leftAfter: -45,
                leftBefore: 45,
              ),
              child: const Image(
                image: AssetImage('assets/hacker.png'),
              ),
            ),
            TFadeinAnimation(
              durationInMs: 2400,
              animatePosition: TAnimatePosition(
                bottomBefore: -40,
                bottomAfter: 40,
                rightAfter: 10,
                rightBefore: -10,
              ),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo,
                ),
              ),
            ),

          ],
        ),


    );
  }
}

