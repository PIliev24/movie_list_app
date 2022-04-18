import 'package:movies_app/models/ui/movie.dart';

abstract class IMovieRepository {
  Future<List<Movie>> getAll();
  void saveMovies();
}
