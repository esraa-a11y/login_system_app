import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/features/authentication/controllers/fade_in_animation_controller.dart';
import 'package:login_system_app/features/authentication/controllers/splash_screen_controller.dart';
import 'package:login_system_app/features/authentication/models/fade_in_animation_model.dart';
class TFadeinAnimation extends StatelessWidget {
    TFadeinAnimation({
    super.key,
     required this.durationInMs,  this.animatePosition, required this.child,
  });

  final Controller=Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animatePosition;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> AnimatedPositioned(
            duration:  Duration(milliseconds: durationInMs),
            top: Controller.animate.value? animatePosition!.topAfter:animatePosition!.topBefore,
            left:  Controller.animate.value? animatePosition!.leftAfter:animatePosition!.leftBefore,
            right:  Controller.animate.value? animatePosition!.rightAfter:animatePosition!.rightBefore,
            bottom:  Controller.animate.value? animatePosition!.bottomAfter:animatePosition!.bottomBefore,
            child: AnimatedOpacity(
              opacity:Controller.animate.value?1:0 ,
              duration:  Duration(milliseconds: durationInMs),
              child: child,
            ),
       // child:Image(image: AssetImage(tSplashTopIcon),
            // ),
      ),

    );
  }
}
