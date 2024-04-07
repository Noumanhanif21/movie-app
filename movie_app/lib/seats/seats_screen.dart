import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';
import 'package:movie_app/utils/constants/spacings_sizes.dart';
import 'package:movie_app/utils/constants/theme_constants.dart';

class SeatsScreen extends StatelessWidget {
  const SeatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 90.h,
        title: Column(
          children: [
            Text(
              "The King’s Man",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary),
            ),
            fixedVertSpacing(5),
            Text(
              "March 5, 2024  I  12:30 hall 1",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(97, 195, 242, 1),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200.h,
                  //width: 300.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 26),
                        child: Container(
                          width: 6.w,
                          height: 190.h,
                          // decoration: BoxDecoration(
                          //   image: DecorationImage(
                          //       image: AssetImage("assets/images/img20.png"),
                          //       fit: BoxFit.contain),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 32, bottom: 16),
                            child: Image.asset(
                              "assets/images/img20.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 190.h,
                        width: 320.w,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            "assets/images/img19.png",
                            fit: BoxFit.contain,
                            height: 180.h,
                            width: 300.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                fixedVertSpacing(120.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/img21.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                fixedVertSpacing(10),
                Image.asset(
                  "assets/images/img22.png",
                  fit: BoxFit.cover,
                ),
                fixedVertSpacing(20),
                SizedBox(
                  width: 300.w,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.desktop_mac,
                            color: Color.fromRGBO(205, 157, 15, 1),
                          ),
                          fixedHorzSpacing(5),
                          Text(
                            "Selected",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.desktop_mac,
                              color: Color.fromRGBO(166, 166, 166, 1),
                            ),
                            fixedHorzSpacing(5),
                            Text(
                              "Not avaliable",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(143, 143, 143, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                fixedVertSpacing(10),
                SizedBox(
                  width: 300.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.desktop_mac,
                            color: Color.fromRGBO(86, 76, 163, 1),
                          ),
                          fixedHorzSpacing(5),
                          Text(
                            "VIP (150\$)",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.desktop_mac,
                            color: Color.fromRGBO(97, 195, 242, 1),
                          ),
                          fixedHorzSpacing(5),
                          Text(
                            "Regular (50\$)",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                fixedVertSpacing(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: 90.w,
                        height: 30.h,
                        child: Row(
                          children: [
                            Text(
                              "4 /",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            Text(
                              "3 row",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            fixedHorzSpacing(20),
                            Icon(
                              Icons.close,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ],
                        ),
                      ),
                      style: TextButton.styleFrom(
                        // minimumSize: Size(110.w, 30.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Color.fromRGBO(166, 166, 166, 0.1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        Text(
                          "50\$",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size(108.w, 50.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Color.fromRGBO(166, 166, 166, 0.1),
                    ),
                  ),
                ),
                fixedHorzSpacing(10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Proceed to pay",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(210.w, 50.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color.fromRGBO(97, 195, 242, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
