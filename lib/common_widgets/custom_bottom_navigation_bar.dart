import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int selectedIndex;
  final void Function(int)? onTap;

  const CustomNavigationBar({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: selectedIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
    );
  }
}
