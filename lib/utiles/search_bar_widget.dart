import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
      child: TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            hintText: 'Search here...',
            // hintStyle: const TextStyle(    fontSize:29 ,),
            icon: SvgPicture.asset('assets/icons/search.svg'),
            border: InputBorder.none),
      ),
    );
  }
}
