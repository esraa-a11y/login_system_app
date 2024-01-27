import 'package:flutter/material.dart';
import 'package:login_system_app/features/authentication/screens/home.dart';
import 'package:login_system_app/features/authentication/screens/login_screen.dart';
import 'package:login_system_app/features/authentication/screens/on_boarding_screen.dart';
import 'package:login_system_app/features/authentication/screens/sign_up_screen.dart';
import 'package:login_system_app/features/authentication/screens/splash_screen.dart';
import 'package:login_system_app/features/authentication/screens/welcome_screen.dart';

void main() {
  runApp( LoginSystem());
}

class LoginSystem extends StatelessWidget {
  LoginSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
        //primarySwatch:MaterialColor(0xFFFFE200),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: SignUpScreen(),
    );
  }
}
