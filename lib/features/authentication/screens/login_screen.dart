import 'package:flutter/material.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/features/authentication/screens/login_form_widget.dart';

import '../../../widgets/login_header_widget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(tDefaultSize),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoginHeaderWidget(size: size),

                    //FORM
                    LoadingForm(),
                    LoginFooterWidget(),
      
                  ],
                ),
              ),
          ),
      ),
    );
  }
}

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('OR'),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(
                  tGoogleLogoImage,
                ),
                width: 20,
              ),

              onPressed: (){},
              label: Text(
              'Sign In With Google'
          )
          ),
        ),
        const SizedBox(height: 10,),
        TextButton(
            onPressed:(){},
            child: Text.rich(TextSpan(
                text: 'Don\'t have an account',
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(text: 'Sign Up',style: TextStyle(
                    color: Colors.blue,
                  )),

                ]
              ,),
            ),
        ),
      ],
    );
  }
}


