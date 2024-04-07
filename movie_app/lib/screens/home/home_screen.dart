import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/movie_controller.dart';
import 'package:movie_app/models/get_movie_model.dart';
import 'package:movie_app/screens/home/widgets/movie_card.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';
import 'package:movie_app/utils/constants/spacings_sizes.dart';
import 'package:movie_app/utils/widgets/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final movieController = Get.put(MovieController());
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
      body: Center(
        child: Padding(
            padding: AppPaddings.largePadding,
            child: Obx(() {
              return movieController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount:
                          movieController.movieResponseModel?.movieItems.length,
                      itemBuilder: (context, i) {
                        MovieItem movieItem =
                            movieController.movieResponseModel!.movieItems[i];
                        return Padding(
                          padding: AppPaddings.bottomlargePadding,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: MovieCard(
                                imagePath: movieItem.backdropPath,
                                title: movieItem.originalTitle),
                          ),
                        );
                      });
            })
            // child: ListView(
            //   children: [
            //     // card 1
            //     const MovieCard(
            //         imagePath: "assets/images/img1.png", title: "Free Guy"),
            //     fixedVertSpacing(20),

            //     // card 2
            //     const MovieCard(
            //         imagePath: "assets/images/img2.png", title: "The King's Man"),
            //     fixedVertSpacing(20),
            //     // card 3
            //     const MovieCard(
            //         imagePath: "assets/images/img3.png", title: "Jojo Rabbit"),
            //   ],
            // ),
            ),
      ),
    );
  }
}
