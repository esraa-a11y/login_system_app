import 'package:flutter/material.dart';

import '../constants/colors.dart';
class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Full Name'),
                prefixIcon: Icon(Icons.person_outline_outlined,color:tSecondaryColor,),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color:tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: tSecondaryColor,
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(Icons.email,color:tSecondaryColor,),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color:tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: tSecondaryColor,
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Phone Number'),
                prefixIcon: Icon(Icons.phone,color:tSecondaryColor,),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color:tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: tSecondaryColor,
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(Icons.fingerprint,color:tSecondaryColor,),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color:tSecondaryColor,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: tSecondaryColor,
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed:(){} , child:Text('Sign Up'.toUpperCase()) )),
          ],
        ),
      ),
    );
  }
}
