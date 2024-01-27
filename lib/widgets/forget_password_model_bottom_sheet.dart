import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/features/authentication/screens/forget_password_mail.dart';

import '../constants/sizes.dart';
import 'forget_password_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        builder: (context) => Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Make Selection',style: Theme.of(context).textTheme.headline2,),
              Text('select on of the options given below to reset your password',style: Theme.of(context).textTheme.bodyText2,),
              SizedBox(height: 30.0,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: 'E-mail',
                subTitle: 'Reset via Mail Verification',
                onTap: () {
                  Navigator.pop(context);
                  Get.to(()=>ForgetPasswordMailScreen());
                  },
              ),
              SizedBox(height: 20.0,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mobile_friendly_rounded,
                title: 'Phone No',
                subTitle: 'Reset via Phone Verification',
                onTap: () {  },
              ),


            ],),
        ));
  }

}