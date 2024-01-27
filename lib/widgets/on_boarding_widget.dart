import 'package:flutter/material.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/constants/text_strings.dart';
import 'package:login_system_app/features/authentication/models/model_on_boarding.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding:EdgeInsets.all(tDefaultSize) ,
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(model.image),height: size.height*0.4,),
          Column(
            children: [
              Text(tOnBoardingTitle1,style:Theme.of(context).textTheme.headline3 ,),

            ],
          ),
          Text(tOnBoardingCounter1,style:Theme.of(context).textTheme.headline6 ,textAlign: TextAlign.center,),
          SizedBox(height: 50,),
        ],
      ),

    );
  }
}
