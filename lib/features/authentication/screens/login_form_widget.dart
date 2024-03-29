import 'package:flutter/material.dart';
import 'package:login_system_app/constants/sizes.dart';

import '../../../widgets/forget_password_model_bottom_sheet.dart';
import '../../../widgets/forget_password_widget.dart';
class LoadingForm extends StatelessWidget {
  const LoadingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_outlined,
                ),
                labelText: 'Email',
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.fingerprint,
                ),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon:IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.remove_red_eye_sharp),
                ) ,
              ),
            ),
            const SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text('Forget Password'),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text('Login'.toUpperCase()))),
          ],
        ),
      ),);
  }

}

