import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/searched_screen/widgets/my_movie_tile.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';

import 'package:movie_app/utils/widgets/my_bottom_nav_bar.dart';

class SearchedScreen extends StatelessWidget {
  const SearchedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 90.h,
        title: Text(
          "3 Results Found",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(32, 44, 67, 1),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: AppPaddings.largePadding,
        child: ListView(
          children: const [
            MyMovieTile(
                imagePath: "assets/images/img14.png",
                title: "Timeless",
                subTitle: "Fantasy"),
            MyMovieTile(
                imagePath: "assets/images/img15.png",
                title: "In Time",
                subTitle: "Sci-Fi"),
            MyMovieTile(
                imagePath: "assets/images/img14.png",
                title: "A Time To Kill",
                subTitle: "Crime"),
          ],
        ),
      ),
    );
  }
}
