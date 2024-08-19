import 'package:meditation/utiles/bottomnav_item_widget.dart';
import 'package:meditation/constants/constants.dart';
import 'package:meditation/screens/player_page.dart';
import 'package:meditation/utiles/search_bar_widget.dart';
import 'package:meditation/utiles/sessioncard_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
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
                svgSrc: 'assets/icons/calender.svg',
                title: 'Exercises',
                isActive: true),
            BuildBottomNavItems(
                svgSrc: 'assets/icons/calender.svg',
                title: 'Profile',
                isActive: false),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: size.height * 0.5,
                  ),
                  const Text(
                    'Meditation',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  ),
                  SizedBox(
                    height: size.height * 0.5,
                  ),
                  const Text(
                    '20 minutes Educataion',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Doing Meditation makes your body and your mind perfect',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: size.width * 0.4,
                          height: 100,
                          child: const BuildSearchBar())),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      BuildSessionCard(
                        sessionNumber: 'Lesson 01',
                        isDone: true,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MyVideoPlayerPage();
                          }));
                        },
                      ),
                      const BuildSessionCard(
                        sessionNumber: 'Lesson 02',
                      ),
                      const BuildSessionCard(
                        sessionNumber: 'Lesson 03',
                      ),
                      const BuildSessionCard(
                        sessionNumber: 'Lesson 04',
                      ),
                      const BuildSessionCard(
                        sessionNumber: 'Lesson 05',
                      ),
                      const BuildSessionCard(
                        sessionNumber: 'Lesson 06',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Suggestion',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(10),
                    height: 90,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset('assets/icons/Loc.svg'),
                        ),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Advanced Youga',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              Text(
                                'Train Harder',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                            'assets/icons/Meditation_woman_small.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
