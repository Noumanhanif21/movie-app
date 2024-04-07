import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightMode = ThemeData(
  fontFamily: "Poppins",
  brightness: Brightness.light,
  primaryColor: Color(0xFF2E2739),
  scaffoldBackgroundColor: Color.fromRGBO(219, 219, 223, 1),
  colorScheme: ColorScheme.light(
    background: Color.fromRGBO(246, 246, 250, 1),
    primary: Color.fromRGBO(46, 39, 57, 1),
    secondary: Color.fromRGBO(130, 125, 136, 1),
    inversePrimary: Colors.grey.shade800,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xFF2E2739),
    ),
    titleSmall: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(246, 246, 250, 1),
    ),
  ).apply(fontFamily: "Poppins"),
);
