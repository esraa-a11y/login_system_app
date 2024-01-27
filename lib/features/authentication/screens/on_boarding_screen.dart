import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_system_app/constants/colors.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/constants/text_strings.dart';
import 'package:login_system_app/features/authentication/controllers/on_boarding_controller.dart';
import 'package:login_system_app/features/authentication/models/model_on_boarding.dart';
import 'package:login_system_app/widgets/on_boarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final controller=OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages:controller.pages,
          liquidController: controller.contoller,
          slideIconWidget: Icon(Icons.arrow_back_ios),
           enableSideReveal: true,
            onPageChangeCallback:controller.onPageChangeCallback,
          ),
          Positioned(
            bottom: 60.0,
              child: OutlinedButton(
                onPressed: () {
                  controller.animateToNextSlide();
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.white ,
                ), child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle,

                ),
                child:Icon(Icons.arrow_forward_ios),
              ),


          )),
          Positioned(
            top: 50,
              right: 20,
              child: TextButton(
                onPressed: () =>controller.skip(),
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),

              ),
          ),
          Obx(
            ()=> Positioned(
              bottom: 10,
                child: AnimatedSmoothIndicator(
              activeIndex:controller.currentPage.value ,
              count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
            ),
            ),
          ),
        ],
      ),
    );
  }

}

