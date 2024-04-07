class ApiConfig {
  final String _accessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkZmU5ODA0ZjE2MWUxODZjZGQxMTJiMjI1YmY1ZmQ1ZSIsInN1YiI6IjYxMGJiYzZhZTYxZTZkMDA3NTUwYjQzNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.S8F1SNrLapcFGlfdTbMAn_XNCzEcNIc9-h9TDjNWAyo';
  String get getAccessToken => _accessToken;
  static get imagePrefixPath => 'https://image.tmdb.org/t/p/w500';
}
