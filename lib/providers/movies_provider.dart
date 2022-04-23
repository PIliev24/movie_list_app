import 'package:flutter/cupertino.dart';
import 'package:movies_app/pages/home_page/all_movies.dart';
import 'package:movies_app/pages/home_page/watchlist_movies.dart';
import 'package:movies_app/repositories/movie.dart';

import '../configuration/locator.dart';
import '../models/ui/movie.dart';

class MoviesProvider extends ChangeNotifier {
  final _moviesRepository = getIt<MovieRepository>();

  List<Movie> _moviesList = [];
  List<Movie> get moviesList => _moviesList;
  set handleMoviesListChange(List<Movie> movies) {
    _moviesList = movies;
    notifyListeners();
  }

  final List<Movie> _watchList = [];
  List<Movie> get watchList => _watchList;

  void addToWatchlist(Movie value) {
    _watchList.add(value);
    notifyListeners();
  }

  void removeFromWatchlist(Movie value) {
    _watchList.removeWhere((element) => element == value);
    notifyListeners();
  }

  Future setMoviesList() async {
    await _moviesRepository.saveMovies();
    final movies = await _moviesRepository.getAll();
    handleMoviesListChange = movies;
  }

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  set changeSelectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  Widget returnSelectedList() {
    if (_selectedIndex == 0) {
      return const AllMovies();
    }
    return const WatchlistMovies();
  }
}
