import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/custom_bottom_navigation_bar.dart';
import '../../common_widgets/custom_drawer.dart';
import '../../common_widgets/loading_page.dart';
import '../../configuration/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<MoviesProvider>().setMoviesList();
  }

  @override
  Widget build(BuildContext context) {
    if (context.watch<MoviesProvider>().moviesList.isEmpty) {
      return const LoadingScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movies list',
        ),
        // elevation: 0,
        centerTitle: true,
        // backgroundColor: Colors.white,
      ),
      body: context.read<MoviesProvider>().returnSelectedList(),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (int value) =>
            context.read<MoviesProvider>().changeSelectedIndex = value,
        items: bottomBarItems,
        selectedIndex: context.watch<MoviesProvider>().selectedIndex,
      ),
      drawer: CustomDrawer(),
    );
  }
}
