import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPaddings {
  // Standard paddings
  static EdgeInsets smallPadding = EdgeInsets.all(8.0.h);
  static EdgeInsets mediumPadding = EdgeInsets.all(16.0.h);
  static EdgeInsets largePadding = EdgeInsets.all(24.0.h);

  // Symmetric paddings
  static EdgeInsets horizontalSymmetricPadding =
      EdgeInsets.symmetric(horizontal: 16.0.w);
  static EdgeInsets verticalSymmetricPadding =
      EdgeInsets.symmetric(vertical: 16.0.h);
  static EdgeInsets customSymmetricPadding(
          {required double h, required double v}) =>
      EdgeInsets.symmetric(horizontal: h.w, vertical: v.h);

  // Padding for specific sides
  static EdgeInsets leftPadding = EdgeInsets.only(left: 8.0.w);
  static EdgeInsets rightPadding = EdgeInsets.only(right: 8.0.w);
  static EdgeInsets topPadding = EdgeInsets.only(top: 8.0.h);
  static EdgeInsets bottomPadding = EdgeInsets.only(bottom: 8.0.h);
  static EdgeInsets leftlargePadding = EdgeInsets.only(left: 16.0.w);
  static EdgeInsets rightlargePadding = EdgeInsets.only(right: 16.0.w);
  static EdgeInsets toplargePadding = EdgeInsets.only(top: 16.0.h);
  static EdgeInsets bottomlargePadding = EdgeInsets.only(bottom: 16.0.h);
}
