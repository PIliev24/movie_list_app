import 'package:movies_app/models/network/movie.dart';

import '../configuration/global_variables.dart';
import '../configuration/requests.dart';

class API {
  Future<List<NetworkMovie>> getMovies() async {
    final url =
        baseUrl + '/FEND16/movie-json-data/master/json/movies-coming-soon.json';
    final data = await getRequest(url);
    List<NetworkMovie> movies = List<NetworkMovie>.from(data.map((model) {
      return NetworkMovie.fromJson(model);
    }));
    return movies;
  }
}
