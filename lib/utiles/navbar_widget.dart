import 'package:flutter/material.dart';
import 'package:meditation/utiles/bottomnav_item_widget.dart';

class BuildBottomNavBar extends StatelessWidget {
  const BuildBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildBottomNavItems(
              svgSrc: 'assets/icons/calender.svg',
              title: 'TODAY',
              isActive: false),
          BuildBottomNavItems(
              svgSrc: 'assets/icons/gym.svg',
              title: 'Exercises',
              isActive: true),
          BuildBottomNavItems(
              svgSrc: 'assets/icons/setting.svg',
              title: 'Profile',
              isActive: false),
        ],
      ),
    );
  }
}
