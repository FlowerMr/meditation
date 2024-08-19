import 'package:flutter/material.dart';
import 'package:meditation/constants/constants.dart';
import 'package:flutter_svg/svg.dart';

class BuildBottomNavItems extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback? press;
  final bool isActive;
  const BuildBottomNavItems({
    super.key,
    required this.svgSrc,
    required this.title,
    this.press,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style: TextStyle(
            color: isActive ? kActiveIconColor : kTextColor,
          ),
        ),
      ],
    );
  }
}
