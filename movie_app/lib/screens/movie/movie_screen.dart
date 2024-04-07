import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';
import 'package:movie_app/utils/constants/spacings_sizes.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Container(
            height: 466.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.5),
                  Color.fromRGBO(0, 0, 0, 0),
                ],
              ),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/img17.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 466.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.5),
                  Color.fromRGBO(0, 0, 0, 0),
                ],
              ),
            ),
          ),
          AppBar(
            foregroundColor: Color.fromRGBO(225, 225, 225, 1),
            backgroundColor: Colors.transparent,
            title: Text(
              "Watch",
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 290.h,
            left: 65.w,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "In theaters december 22, 2021",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(225, 225, 225, 1),
                    ),
                  ),
                ),
                fixedVertSpacing(10),
                MaterialButton(
                  onPressed: () {
                    Get.toNamed("/hall_screen");
                  },
                  child: Text(
                    "Get Tickets",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(225, 225, 225, 1),
                    ),
                  ),
                  color: Color.fromRGBO(97, 195, 242, 1),
                  height: 50.h,
                  minWidth: 243.w,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                fixedVertSpacing(10),
                MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        fixedHorzSpacing(5),
                        // Spacer(),
                        Text(
                          "Watch Trailer",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(225, 225, 225, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.transparent,
                  height: 50.h,
                  minWidth: 243.w,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Color.fromRGBO(97, 195, 242, 1)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 460.h,
            child: Padding(
              padding: AppPaddings.largePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Genres",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  fixedVertSpacing(10),
                  Row(
                    children: [
                      Container(
                        width: 60.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(21, 210, 188, 1),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Action",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(225, 225, 225, 1),
                          ),
                        )),
                      ),
                      fixedHorzSpacing(10),
                      Container(
                        width: 60.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(226, 108, 165, 1),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Thriller",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(225, 225, 225, 1),
                          ),
                        )),
                      ),
                      fixedHorzSpacing(10),
                      Container(
                        width: 60.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(86, 76, 163, 1),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Science",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(225, 225, 225, 1),
                          ),
                        )),
                      ),
                      fixedHorzSpacing(10),
                      Container(
                        width: 60.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(205, 157, 15, 1),
                            borderRadius: BorderRadius.circular(24)),
                        child: Center(
                            child: Text(
                          "Fiction",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(225, 225, 225, 1),
                          ),
                        )),
                      ),
                    ],
                  ),
                  fixedVertSpacing(35),
                  Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  fixedVertSpacing(10),
                  Container(
                    width: 320.w,
                    //height: 133.h,
                    child: Text(
                      "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them. Discover the origins of the very first independent intelligence agency in The King's Man. The Comic Book “The Secret Service” by Mark Millar and Dave Gibbons.",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(143, 143, 143, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
