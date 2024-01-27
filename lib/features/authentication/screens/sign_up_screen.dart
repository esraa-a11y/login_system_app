import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/constants/colors.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/features/authentication/screens/login_form_widget.dart';
import 'package:login_system_app/features/authentication/screens/login_screen.dart';
import 'package:login_system_app/widgets/form_header_widget.dart';
import 'package:login_system_app/widgets/login_header_widget.dart';

import '../../../widgets/sign_up_form_widget.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(image: tWelcomeScreenImage, title: 'Get on Board !', subTitle: 'create your profile to start your journey '),
                SignUpFormWidget(),
                Column(children: [
                Text('OR'),
                  SizedBox(width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {  },
                    icon: Image(image: AssetImage(tGoogleLogoImage, ),
                      width: 20.0,
                    ), label: Text('Sign In With Google'.toUpperCase()),

                  ),
                  ),
                  TextButton(onPressed: (){},
                      child: Text.rich(TextSpan(
                        children: [
                          TextSpan(text:'already have an account?',
                          style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(text:'Login'.toUpperCase()),

                        ],
                      ),),
                  ),
                ],
                ),
              ],
            ),
          ),
      
        ),
      ),
    );
  }
}

