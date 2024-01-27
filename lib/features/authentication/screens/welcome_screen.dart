import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/constants/colors.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/constants/text_strings.dart';
import 'package:login_system_app/features/authentication/controllers/fade_in_animation_controller.dart';
import 'package:login_system_app/features/authentication/models/fade_in_animation_model.dart';
import 'package:login_system_app/features/authentication/screens/login_screen.dart';
import 'package:login_system_app/widgets/animation_design.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery=MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness=mediaQuery.platformBrightness;
    final isDarkMode=brightness==Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor:tPrimaryColor,
      body: Stack(
        children: [
          TFadeinAnimation(
            durationInMs: 1200,
            animatePosition: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,

            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(tWelcomeScreenImage,),height: height*0.5,),
                  Column(
                    children: [
                      Text(tWelcomeTitle,style: Theme.of(context).textTheme.headline3,),
                      SizedBox(height: 10,),
            
                      Text(tWelcomeSubTitle,style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
            
            
                    ],
                  ),
                  Row(children: [
                    Expanded(
                      child: OutlinedButton(onPressed: (){
                        Get.to(()=> const LoginScreen());
                      },
                          child: Text('Login'.toUpperCase()),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          foregroundColor: tWhiteColor,
                          side: BorderSide(color: tSecondaryColor),
                          padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(),
                          foregroundColor: tWhiteColor,
                          backgroundColor: tSecondaryColor,
                          side: BorderSide(color: tSecondaryColor),
                          padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                        ),
                        child: Text(
                        'Sign Up'.toUpperCase()
                    )),),
            
            
                  ],),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
