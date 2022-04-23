import 'package:movies_app/models/ui/movie.dart';

import '../configuration/locator.dart';
import '../services/api.dart';
import '../services/db/movies.dart';
import 'movie_interface.dart';

class MovieRepository implements IMovieRepository {
  final _apiService = getIt<API>();
  final _dbMoviesService = getIt<DbMoviesService>();

  @override
  Future<List<Movie>> getAll() async {
    final dbMovies = _dbMoviesService.getMovies();
    return dbMovies
        .map((dbMovie) => Movie(
              id: dbMovie.id ?? '-',
              title: dbMovie.title ?? '-',
              year: dbMovie.year ?? "2022",
              genres: dbMovie.genres ?? [],
              ratings: dbMovie.ratings ?? [],
              poster: dbMovie.poster ?? '-',
              contentRating: dbMovie.contentRating ?? "-",
              duration: dbMovie.duration ?? '-',
              releaseDate: dbMovie.releaseDate ?? '-',
              averageRating: dbMovie.averageRating ?? 0,
              originalTitle: dbMovie.originalTitle ?? '-',
              storyline: dbMovie.storyline ?? '-',
              actors: dbMovie.actors ?? [],
              imdbRating: dbMovie.imdbRating != '' ? dbMovie.imdbRating! : 0,
              posterUrl: dbMovie.posterUrl ?? '-',
            ))
        .toList();
  }

  @override
  Future saveMovies() async {
    final networkMovies = await _apiService.getMovies();
    await _dbMoviesService.setMovies(networkMovies);
  }
}
