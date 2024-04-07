import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

fixedVertSpacing(double h) => SizedBox(
      height: h.h,
    );

fixedHorzSpacing(double w) => SizedBox(
      width: w.w,
    );

double smallIconSize = 20.sp;
double medIconSize = 30.sp;
double largelIconSize = 40.sp;

Size getSize(BuildContext context) => MediaQuery.of(context).size;
double smallBorderRadius = 10.sp;
double medBorderRadius = 16.sp;
double largelBorderRadius = 20.sp;
