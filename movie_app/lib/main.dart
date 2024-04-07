import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_app/screens/hall/hall_screen.dart';
import 'package:movie_app/screens/home/home_screen.dart';
import 'package:movie_app/screens/movie/movie_screen.dart';
import 'package:movie_app/screens/search/search_screen.dart';
import 'package:movie_app/screens/searched_screen/searched_screen.dart';
import 'package:movie_app/screens/seats/seats_screen.dart';
import 'package:movie_app/utils/theme/my_theme.dart';

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
                page: () => HomeScreen(),
              ),
              GetPage(
                name: '/search_screen',
                page: () => const SearchScreen(),
              ),
              GetPage(
                name: '/searched_screen',
                page: () => const SearchedScreen(),
              ),
              GetPage(
                name: '/movie_screen',
                page: () => const MovieScreen(),
              ),
              GetPage(
                name: '/hall_screen',
                page: () => const HallScreen(),
              ),
              GetPage(
                name: '/seats_screen',
                page: () => const SeatsScreen(),
              ),
            ],
          );
        });
  }
}
