import 'package:hive/hive.dart';

part 'movie.g.dart';

@HiveType(typeId: 0)
class DbMovie extends HiveObject {
  @HiveField(0)
  final String? id;

  @HiveField(1)
  final String? title;

  @HiveField(2)
  final String? year;

  @HiveField(3)
  final List<String>? genres;

  @HiveField(4)
  final List<double>? ratings;

  @HiveField(5)
  final String? poster;

  @HiveField(6)
  final String? contentRating;

  @HiveField(7)
  final String? duration;

  @HiveField(8)
  final String? releaseDate;

  @HiveField(9)
  final double? averageRating;

  @HiveField(10)
  final String? originalTitle;

  @HiveField(11)
  final String? storyline;

  @HiveField(12)
  final List<String>? actors;

  @HiveField(13)
  final dynamic imdbRating;

  @HiveField(14)
  final String? posterUrl;

  DbMovie({
    this.id,
    this.title,
    this.year,
    this.genres,
    this.ratings,
    this.poster,
    this.contentRating,
    this.duration,
    this.releaseDate,
    this.averageRating,
    this.originalTitle,
    this.storyline,
    this.actors,
    this.imdbRating,
    this.posterUrl,
  });
}
