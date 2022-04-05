import 'api_key.dart';

import '../../domine/core/constants.dart';

class ApiEndPoint {
  static const downloads = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$baseUrl/search/movie?api_key=$apiKey";
  static const commingSoon = "$baseUrl/movie/upcoming?api_key=$apiKey";
  static const everyOnesWatching = "$baseUrl/movie/now_playing?api_key=$apiKey";
}
