import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class NetworkMovie {
  final String? id;
  final String? title;
  final String? year;
  final List<String>? genres;
  final List<double>? ratings;
  final String? poster;
  final String? contentRating;
  final String? duration;
  final String? releaseDate;
  final double? averageRating;
  final String? originalTitle;
  final String? storyline;
  final List<String>? actors;
  final dynamic imdbRating;
  @JsonKey(name: 'posterurl')
  final String? posterUrl;

  NetworkMovie({
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

  factory NetworkMovie.fromJson(Map<String, dynamic> json) =>
      _$NetworkMovieFromJson(json);
  Map<String, dynamic> toJson() => _$NetworkMovieToJson(this);
}
