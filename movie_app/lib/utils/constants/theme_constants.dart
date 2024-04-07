import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({
  dynamic mycolor = Colors.black,
  double mysize = 13,
  dynamic myfontWeight = FontWeight.normal,
}) =>
    TextStyle(
      color: mycolor,
      fontSize: mysize,
      fontWeight: myfontWeight,
    );

TextTheme textTheme = TextTheme(
  headlineLarge: GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Colors.blue,
  ),
  headlineSmall: GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
    letterSpacing: 2,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: 32.sp,
    color: const Color.fromRGBO(46, 39, 57, 1),
    fontWeight: FontWeight.w500,
  ),
  titleMedium: GoogleFonts.poppins(
    fontSize: 14.h,
    fontWeight: FontWeight.w300,
    color: Colors.grey,
  ),
  titleSmall: TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(246, 246, 250, 1),
  ).apply(
    fontFamily: "Poppins",
  ),
);
