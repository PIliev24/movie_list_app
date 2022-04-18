import 'package:movies_app/models/db/movie.dart';
import 'package:movies_app/models/network/movie.dart';

DbMovie movieNetworkToDb(NetworkMovie movie) => DbMovie(
      id: movie.id,
      title: movie.title,
      genres: movie.genres,
      year: movie.year,
      ratings: movie.ratings,
      poster: movie.poster,
      contentRating: movie.contentRating,
      duration: movie.duration,
      releaseDate: movie.releaseDate,
      averageRating: movie.averageRating,
      originalTitle: movie.originalTitle,
      storyline: movie.storyline,
      actors: movie.actors,
      imdbRating: movie.imdbRating,
      posterUrl: movie.posterUrl,
    );
