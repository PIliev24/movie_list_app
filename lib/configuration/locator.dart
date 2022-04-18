import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:movies_app/models/db/movie.dart';
import 'package:movies_app/repositories/movie.dart';
import 'package:movies_app/services/db/movies.dart';

import '../services/api.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<API>(() => API());
  getIt.registerLazySingleton<DbMoviesService>(
      () => DbMoviesService(box: Hive.box<DbMovie>('movies')));
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepository(),
  );
}
