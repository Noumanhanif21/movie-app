import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_app/utils/constants/spacings_sizes.dart';

class MyMovieTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  const MyMovieTile(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: InkWell(
        onTap: () {
          Get.toNamed("/movie_screen");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100.h,
              width: 130.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            fixedHorzSpacing(15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                      color: Color.fromRGBO(32, 44, 67, 1)),
                ),
                fixedVertSpacing(10),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(219, 219, 223, 1)),
                )
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz_outlined,
                color: Color.fromRGBO(97, 195, 242, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
