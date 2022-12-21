import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:music_stats/pages/homepage.dart';
import 'package:music_stats/pages/profile_page.dart';
import 'package:music_stats/pages/search_page.dart';
import 'package:music_stats/pages/stats_page.dart';

class ViewControllerPage extends StatefulWidget {
  const ViewControllerPage({super.key});

  @override
  State<ViewControllerPage> createState() => _ViewControllerPageState();
}

class _ViewControllerPageState extends State<ViewControllerPage> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: BottomNavyBar(
            selectedIndex: currentIndex,
            onItemSelected: (index) {
              setState(() => currentIndex = index);
              //pageController.jumpToPage()
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                title: const Text("Home", style: TextStyle(fontSize: 18)),
                icon: const Icon(Icons.home_rounded),
                activeColor: Theme.of(context).colorScheme.secondary,
                inactiveColor: Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: const Text("Stats", style: TextStyle(fontSize: 18)),
                icon: const Icon(Icons.graphic_eq_rounded),
                activeColor: Theme.of(context).colorScheme.secondary,
                inactiveColor: Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: const Text("Search", style: TextStyle(fontSize: 18)),
                icon: const Icon(Icons.search_rounded),
                activeColor: Theme.of(context).colorScheme.secondary,
                inactiveColor: Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: const Text("Profile", style: TextStyle(fontSize: 18)),
                icon: const Icon(Icons.person_rounded),
                activeColor: Theme.of(context).colorScheme.secondary,
                inactiveColor: Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
            ],
            iconSize: 30,
            showElevation: false,
            containerHeight: 60,
            backgroundColor: Theme.of(context).backgroundColor,
          ),
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: ((value) => setState(() => currentIndex = value)),
          children: const <Widget>[
            HomePage(),
            StatsPage(),
            SearchPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
