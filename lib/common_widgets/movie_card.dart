import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/providers/main_page_provider.dart';
import 'package:movies_app/routes/routes.dart';
import 'package:provider/provider.dart';

import '../models/ui/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _handleStartClicked() {
      if (context.read<MainPageProvider>().watchList.contains(movie)) {
        context.read<MainPageProvider>().removeFromWatchlist(movie);
      } else {
        context.read<MainPageProvider>().addToWatchlist(movie);
      }
    }

    final _iconColor =
        context.read<MainPageProvider>().watchList.contains(movie)
            ? Colors.yellow
            : Colors.grey;

    return Center(
      child: Card(
        color: const Color(0xFFF2F5F8),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () => Navigator.pushNamed(
            context,
            RouteManager.movieDetails,
            arguments: movie,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipOval(
                    child: FadeInImage(
                      image: NetworkImage(movie.posterUrl),
                      placeholder:
                          const AssetImage("assets/images/placeholder.png"),
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.error,
                          color: Color(Colors.red.value),
                        );
                      },
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: 140,
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text('Imdb rating ${movie.imdbRating}'),
                  ],
                ),
                InkWell(
                  child: Transform.scale(
                    scale: 2.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _iconColor,
                      ),
                      onPressed: _handleStartClicked,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
