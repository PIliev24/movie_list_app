import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/common_widgets/loading_page.dart';
import 'package:movies_app/providers/main_page_provider.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/custom_bottom_navigation_bar.dart';
import '../../configuration/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    context.read<MainPageProvider>().setMoviesList();
  }

  @override
  Widget build(BuildContext context) {
    if (context.watch<MainPageProvider>().moviesList.isEmpty) {
      return const LoadingScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movies list',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: context.read<MainPageProvider>().returnSelectedList(),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (int value) =>
            context.read<MainPageProvider>().changeSelectedIndex = value,
        items: bottomBarItems,
        selectedIndex: context.watch<MainPageProvider>().selectedIndex,
      ),
    );
  }
}
