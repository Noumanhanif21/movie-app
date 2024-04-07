import 'package:get/get.dart';
import 'package:movie_app/models/get_movie_model.dart';
import 'package:movie_app/repository/repository.dart';

class MovieController extends GetxController {
  RxBool isLoading = false.obs;
  final Repository _repository = Repository();
  GetMovieResponseModel? movieResponseModel;

  @override
  onReady() {
    getPopularMovies();
  }

  Future<void> getPopularMovies() async {
    isLoading.value = true;
    final resFromRepo = await _repository.getPopularMovies();
    isLoading.value = false;
    if (resFromRepo != null) {
      movieResponseModel = resFromRepo;
      Get.snackbar('abc', 'data lab gyaa', snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('abc', 'chaaaaaa');
    }
  }
}
