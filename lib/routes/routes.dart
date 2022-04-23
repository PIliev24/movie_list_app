import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/pages/home_page/movie_details.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:provider/provider.dart';

import '../pages/main_page/main_page.dart';

class RouteManager {
  static const String mainPage = '/';
  static const String movieDetails = '/movie-details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case movieDetails:
        return (MaterialPageRoute(
          builder: (context) => const MovieDetails(),
          settings: settings,
        ));

      case mainPage:
        return (MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => MoviesProvider(),
            child: const MainPage(),
          ),
        ));

      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
