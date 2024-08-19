import 'package:flutter/material.dart';

import 'package:meditation/screens/meditation_page.dart';

import 'package:flutter_svg/svg.dart';
import 'package:meditation/utiles/category_widget.dart';
import 'package:meditation/utiles/navbar_widget.dart';
import 'package:meditation/utiles/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BuildBottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFFFCC80),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/image/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      // color: const Color.fromARGB(255, 229, 182, 156),
                      child: SvgPicture.asset('assets/icons/menue.svg'),
                    ),
                  ),
                  Text(
                    ' Dear Mr Golkar \n Are You Ready for\n  Meditaion?   ',
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const BuildSearchBar(),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        const BuildCategoryCard(
                          svgSrc: 'assets/icons/Hamburger.svg',
                          title: 'Offered Regim',
                        ),
                        const BuildCategoryCard(
                          svgSrc: 'assets/icons/Exercises.svg',
                          title: ' Easy Exersisec',
                        ),
                        BuildCategoryCard(
                            svgSrc: 'assets/icons/Meditation.svg',
                            title: ' Meditation',
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const MeditationPage();
                                  },
                                ),
                              );
                            }),
                        const BuildCategoryCard(
                          svgSrc: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
