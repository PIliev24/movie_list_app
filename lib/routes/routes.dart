import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/pages/main_page/movie_details.dart';
import 'package:movies_app/providers/main_page_provider.dart';
import 'package:provider/provider.dart';

import '../pages/main_page/main_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String movieDetails = '/movie-details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return (MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => MainPageProvider(),
            child: const MainPage(),
          ),
        ));

      case movieDetails:
        return (MaterialPageRoute(
          builder: (context) => const MovieDetails(),
          settings: settings,
        ));

      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
