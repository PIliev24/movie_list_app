import 'package:hive/hive.dart';
import 'package:movies_app/models/db/movie.dart';

Future registerAdapters() async {
  Hive.registerAdapter(DbMovieAdapter());
}

Future openBoxes() async {
  final openedBox = Hive.isBoxOpen('movies');

  if (!openedBox) {
    await Hive.openBox<DbMovie>('movies');
  }
}
