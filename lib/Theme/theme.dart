import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_system_app/Theme/widget_themes/text_theme.dart';
class TAppTheme{
  TAppTheme._();
static  ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch:MaterialColor(0xFFFFE200,<int,Color>{
    50:Color(0xFFEEE7B1),
    100:Color(0xFFD3C56E),
    200:Color(0xFFCBC578),
    300:Color(0xFFCEBE5C),
    400:Color(0xFFC7BD79),
    500:Color(0xFFEEE7B1),
    600:Color(0xFF625B1F),

  }),
  textTheme: TTextTheme.lightTextTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(),
  ),
);
static  ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch:MaterialColor(0xFFFFE200,<int,Color>{
    50:Color(0xFFEEE7B1),
    100:Color(0xFFD3C56E),
    200:Color(0xFFCBC578),
    300:Color(0xFFCEBE5C),
    400:Color(0xFFC7BD79),
    500:Color(0xFFEEE7B1),
    600:Color(0xFF625B1F),

  }),
  textTheme: TTextTheme.darkTextTheme,
);

}