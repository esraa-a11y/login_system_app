import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/features/authentication/models/model_on_boarding.dart';
import 'package:login_system_app/widgets/on_boarding_widget.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_strings.dart';

class OnBoardingController extends GetxController{
  final contoller =LiquidController();

  RxInt currentPage=0.obs;
  final pages =[
    OnBoardingPage (
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        Title: tOnBoardingTitle1,
        SubTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,

        bgColor: tOnBoardingPage1Color,

      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tOnBoardingImage2,
        Title: tOnBoardingTitle2,
        SubTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,


      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        Title: tOnBoardingTitle3,
        SubTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage3Color,

      ),
    ),

  ];
  void onPageChangeCallback(int activePageIndex) {

      currentPage.value=activePageIndex;

  }
  skip()=> contoller.jumpToPage(page: 2);
  animateToNextSlide(){
  int nextPage=contoller.currentPage+1;
  contoller.animateToPage(page: nextPage);}

}