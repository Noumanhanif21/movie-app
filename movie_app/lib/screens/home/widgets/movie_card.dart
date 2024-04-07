import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/config/api_config.dart';

class MovieCard extends StatelessWidget {
  final String imagePath;
  final String title;
  const MovieCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 335.w,
          height: 180.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('${ApiConfig.imagePrefixPath}$imagePath'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 335.w,
          height: 180.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.2), Colors.black.withOpacity(0.6),
                // const Color.fromRGBO(0, 0, 0, 0),
              ],
            ),
          ),
        ),
        Positioned(
          top: 145.h,
          left: 25.w,
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
