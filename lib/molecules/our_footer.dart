import 'package:flutter/material.dart';

import '../fundation/color_fundation.dart';

class OurFooter extends StatelessWidget {
  final Icon iconLeft;
  final Icon iconRight;

  const OurFooter(
      {super.key,
      this.iconRight = const Icon(Icons.airline_seat_individual_suite),
      this.iconLeft = const Icon(Icons.add_a_photo)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: iconLeft,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: iconRight,
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          backgroundColor: footerBackground,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30.0,
          onTap: (index) {
            debugPrint('oprimio el elemento --> $index');
          },
        ));
  }
}
