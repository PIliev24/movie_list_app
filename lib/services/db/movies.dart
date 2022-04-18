import 'package:hive/hive.dart';
import 'package:movies_app/models/db/movie.dart';
import 'package:movies_app/models/network/movie.dart';

import '../db_mappers.dart';

class DbMoviesService {
  final Box<DbMovie> box;

  DbMoviesService({
    required this.box,
  });

  Future<void> setMovies(List<NetworkMovie> movies) async {
    await box.clear();
    await box.addAll(movies.map((e) => movieNetworkToDb(e)));
  }

  List<DbMovie> getMovies() {
    final dbMovies = box.values;
    return dbMovies.toList();
  }

  Future<void> deleteCountries() async {
    await box.delete('movies');
  }
}
