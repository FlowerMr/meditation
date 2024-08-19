import 'package:flutter/material.dart';
import 'package:meditation/constants/constants.dart';
import 'package:flutter_svg/svg.dart';

class BuildCategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback? press;
  const BuildCategoryCard({
    super.key,
    required this.svgSrc,
    required this.title,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(svgSrc),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
