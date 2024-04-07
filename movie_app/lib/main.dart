import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_app/hall/hall_screen.dart';
import 'package:movie_app/home/home_screen.dart';
import 'package:movie_app/movie/movie_screen.dart';
import 'package:movie_app/search/search_screen.dart';
import 'package:movie_app/searched_screen/searched_screen.dart';
import 'package:movie_app/seats/seats_screen.dart';
import 'package:movie_app/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: '',
            theme: lightMode,
            initialRoute: '/',
            getPages: [
              // GetPage(name: '/', page: () => Home()),
              GetPage(
                name: '/',
                page: () => const HomeScreen(),
              ),
              GetPage(
                name: '/search_screen',
                page: () => SearchScreen(),
              ),
              GetPage(
                name: '/searched_screen',
                page: () => SearchedScreen(),
              ),
              GetPage(
                name: '/movie_screen',
                page: () => MovieScreen(),
              ),
              GetPage(
                name: '/hall_screen',
                page: () => HallScreen(),
              ),
              GetPage(
                name: '/seats_screen',
                page: () => SeatsScreen(),
              ),
            ],
          );
        });
  }
}
