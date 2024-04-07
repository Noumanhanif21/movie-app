import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/home/widgets/movie_card.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';
import 'package:movie_app/utils/constants/spacings_sizes.dart';
import 'package:movie_app/utils/widgets/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 90.h,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Watch",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAllNamed("/search_screen");
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: AppPaddings.largePadding,
        child: ListView(
          children: [
            // card 1
            const MovieCard(
                imagePath: "assets/images/img1.png", title: "Free Guy"),
            fixedVertSpacing(20),

            // card 2
            const MovieCard(
                imagePath: "assets/images/img2.png", title: "The King's Man"),
            fixedVertSpacing(20),
            // card 3
            const MovieCard(
                imagePath: "assets/images/img3.png", title: "Jojo Rabbit"),
          ],
        ),
      ),
    );
  }
}
