import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';

class MySearchBAr extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  MySearchBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      height: 60.h,
      child: Padding(
        padding: AppPaddings.horizontalSymmetricPadding,
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            fillColor: const Color.fromRGBO(239, 239, 239, 1),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(24),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(24),
            ),
            hintText: "TV Shows, Movies and More",
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(32, 44, 67, 0.3),
                fontFamily: "Poppins"),
            prefixIcon: const Icon(
              Icons.search,
              color: Color.fromRGBO(32, 44, 67, 1),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                Get.toNamed("searched_screen");
              },
              icon: const Icon(
                Icons.close,
                color: Color.fromRGBO(32, 44, 67, 1),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}
