// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkMovie _$NetworkMovieFromJson(Map<String, dynamic> json) => NetworkMovie(
      id: json['id'] as String?,
      title: json['title'] as String?,
      year: json['year'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      poster: json['poster'] as String?,
      contentRating: json['contentRating'] as String?,
      duration: json['duration'] as String?,
      releaseDate: json['releaseDate'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      originalTitle: json['originalTitle'] as String?,
      storyline: json['storyline'] as String?,
      actors:
          (json['actors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imdbRating: json['imdbRating'],
      posterUrl: json['posterurl'] as String?,
    );

Map<String, dynamic> _$NetworkMovieToJson(NetworkMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'genres': instance.genres,
      'ratings': instance.ratings,
      'poster': instance.poster,
      'contentRating': instance.contentRating,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate,
      'averageRating': instance.averageRating,
      'originalTitle': instance.originalTitle,
      'storyline': instance.storyline,
      'actors': instance.actors,
      'imdbRating': instance.imdbRating,
      'posterurl': instance.posterUrl,
    };
