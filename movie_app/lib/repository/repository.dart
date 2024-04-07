import 'dart:convert';

import 'package:movie_app/config/api_config.dart';
import 'package:movie_app/repository/api_urls.dart';
import 'package:movie_app/utils/extensions/extensions.dart';

import '../models/get_movie_model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final ApiConfig _apiConfig = ApiConfig();

//to get movies list
  Future<GetMovieResponseModel?> getPopularMovies() async {
    try {
      final response = await http.get(ApiUrls.popularMoviesUrl.toUri(),
          headers: {'Authorization': 'Bearer ${_apiConfig.getAccessToken}'});
      final date = DateTime.now().toPakistanFormat();
      print(date);
      // print(response.body);
      if (response.statusCode == 200) {
        return GetMovieResponseModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
