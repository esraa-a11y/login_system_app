import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system_app/constants/image_strings.dart';
import 'package:login_system_app/constants/sizes.dart';
import 'package:login_system_app/features/authentication/screens/otp_screen.dart';
import 'package:login_system_app/widgets/form_header_widget.dart';
class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                SizedBox(height: tDefaultSize*4,),
                FormHeaderWidget
                  (
                  image: tForgetPasswordImage,
                    title: 'Forget Password',
                    subTitle: 'reset password',
                    heightBetween: 30,
                    textAlign: TextAlign.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                SizedBox(height: 10,),
                Form(
                  child: Column(
                    children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Email'),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                      
          
                    ),
                  ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              Get.to(()=>OTPScreen());
                            },
                            child: Text('Next'),
                        ),
                      ),
                ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
