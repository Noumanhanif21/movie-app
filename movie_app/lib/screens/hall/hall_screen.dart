import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';
import 'package:movie_app/utils/constants/spacings_sizes.dart';

class HallScreen extends StatelessWidget {
  const HallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 80,
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
              "In theaters december 22, 2021",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(97, 195, 242, 1),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            fixedVertSpacing(15),
            SizedBox(
              height: 34.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromRGBO(97, 195, 242, 1),
                      foregroundColor: Colors.white,
                      minimumSize: Size(67.w, 32.h),
                    ),
                    child: const Text("4 Mar"),
                  ),
                  fixedHorzSpacing(10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledBackgroundColor:
                          const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledForegroundColor:
                          Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: Size(67.w, 32.h),
                    ),
                    child: const Text("5 Mar"),
                  ),
                  fixedHorzSpacing(10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledBackgroundColor:
                          const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledForegroundColor:
                          Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: Size(67.w, 32.h),
                    ),
                    child: const Text("6 Mar"),
                  ),
                  fixedHorzSpacing(10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledBackgroundColor:
                          const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledForegroundColor:
                          Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: Size(67.w, 32.h),
                    ),
                    child: const Text("7 Mar"),
                  ),
                  fixedHorzSpacing(10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledBackgroundColor:
                          const Color.fromRGBO(166, 166, 166, 0.1),
                      disabledForegroundColor:
                          Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: Size(67.w, 32.h),
                    ),
                    child: const Text("8 Mar"),
                  ),
                ],
              ),
            ),
            fixedVertSpacing(25),
            SizedBox(
              height: 200.h,
              width: 300.w,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "12:30",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          fixedHorzSpacing(10),
                          Text(
                            "Cinetech + hall 1",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                        ],
                      ),
                      fixedVertSpacing(5),
                      Container(
                        width: 249.w,
                        height: 145.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color.fromRGBO(97, 195, 242, 1),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            "assets/images/img18.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      fixedVertSpacing(10),
                      Row(
                        children: [
                          Text(
                            "From ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                          Text(
                            " 50\$ ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Text(
                            " or ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                          Text(
                            " 2500 bonus ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  fixedHorzSpacing(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "12:30",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          fixedHorzSpacing(10),
                          Text(
                            "Cinetech + hall 1",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                        ],
                      ),
                      fixedVertSpacing(5),
                      Container(
                        width: 249.w,
                        height: 145.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color.fromRGBO(97, 195, 242, 1),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            "assets/images/img18.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      fixedVertSpacing(10),
                      Row(
                        children: [
                          Text(
                            "From ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                          Text(
                            " 50\$ ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Text(
                            " or ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(143, 143, 143, 1),
                            ),
                          ),
                          Text(
                            " 2500 bonus ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Get.toNamed("/seats_screen");
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromRGBO(97, 195, 242, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(323.w, 50.h),
              ),
              child: const Text(
                "Select Seats",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
