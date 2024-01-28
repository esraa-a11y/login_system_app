import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_system_app/constants/sizes.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            Text('CO\nDE',style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),),
            Text('Verfication'.toUpperCase(),style: Theme.of(context).textTheme.headline6,),
            SizedBox(height: 40,),
            Text('Enter the verification code sent at'+'esraa@gmail.com',textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                print("OTP is => $code");
              },
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text('Next'))),



          ],
        ),
      ),
    );
  }
}
