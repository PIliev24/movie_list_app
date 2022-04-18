import 'package:flutter/cupertino.dart';

BottomNavigationBarItem customBottomBarItem({
  required String text,
  required IconData icon,
}) {
  return BottomNavigationBarItem(
    icon: Column(
      children: [
        SizedBox(
          width: 32,
          height: 32,
          child: Icon(
            icon,
          ),
        ),
      ],
    ),
    label: text,
  );
}
