import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common_widgets/custom_bottom_bar_item.dart';

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

final bottomBarItems = [
  customBottomBarItem(
    text: 'Home',
    icon: Icons.home,
  ),
  customBottomBarItem(
    text: 'Watchlist',
    icon: Icons.visibility,
  ),
];
