import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/search/widgets/movies_grid.dart';
import 'package:movie_app/utils/constants/padding_constants.dart';
import 'package:movie_app/utils/widgets/my_bottom_nav_bar.dart';
import 'package:movie_app/utils/widgets/my_search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 90.h,
        centerTitle: true,
        title: MySearchBAr(),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: AppPaddings.largePadding,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
          ),
          children: const [
            MoviesGrid(imagePath: "assets/images/img4.png", title: "Comedies"),
            MoviesGrid(imagePath: "assets/images/img5.png", title: "Crime"),
            MoviesGrid(imagePath: "assets/images/img6.png", title: "Family"),
            MoviesGrid(
                imagePath: "assets/images/img7.png", title: "Documentaries"),
            MoviesGrid(imagePath: "assets/images/img8.png", title: "Dramas"),
            MoviesGrid(imagePath: "assets/images/img9.png", title: "Fantasy"),
            MoviesGrid(imagePath: "assets/images/img10.png", title: "Holidays"),
            MoviesGrid(imagePath: "assets/images/img11.png", title: "Horror"),
            MoviesGrid(imagePath: "assets/images/img12.png", title: "Sci-Fi"),
            MoviesGrid(imagePath: "assets/images/img13.png", title: "Thriller"),
          ],
        ),
      ),
    );
  }
}
