// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DbMovieAdapter extends TypeAdapter<DbMovie> {
  @override
  final int typeId = 0;

  @override
  DbMovie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbMovie(
      id: fields[0] as String?,
      title: fields[1] as String?,
      year: fields[2] as String?,
      genres: (fields[3] as List?)?.cast<String>(),
      ratings: (fields[4] as List?)?.cast<double>(),
      poster: fields[5] as String?,
      contentRating: fields[6] as String?,
      duration: fields[7] as String?,
      releaseDate: fields[8] as String?,
      averageRating: fields[9] as double?,
      originalTitle: fields[10] as String?,
      storyline: fields[11] as String?,
      actors: (fields[12] as List?)?.cast<String>(),
      imdbRating: fields[13] as dynamic,
      posterUrl: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DbMovie obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.year)
      ..writeByte(3)
      ..write(obj.genres)
      ..writeByte(4)
      ..write(obj.ratings)
      ..writeByte(5)
      ..write(obj.poster)
      ..writeByte(6)
      ..write(obj.contentRating)
      ..writeByte(7)
      ..write(obj.duration)
      ..writeByte(8)
      ..write(obj.releaseDate)
      ..writeByte(9)
      ..write(obj.averageRating)
      ..writeByte(10)
      ..write(obj.originalTitle)
      ..writeByte(11)
      ..write(obj.storyline)
      ..writeByte(12)
      ..write(obj.actors)
      ..writeByte(13)
      ..write(obj.imdbRating)
      ..writeByte(14)
      ..write(obj.posterUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DbMovieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
