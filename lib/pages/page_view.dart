import 'package:flutter/material.dart';
import 'package:music_stats/pages/homepage.dart';
import 'package:music_stats/pages/profile_page.dart';
import 'package:music_stats/pages/search_page.dart';
import 'package:music_stats/pages/stats_page.dart';

import 'package:music_stats/global/globals.dart' as globals;

class ViewControllerPage extends StatefulWidget {
  const ViewControllerPage({super.key});

  @override
  State<ViewControllerPage> createState() => _ViewControllerPageState();
}

class _ViewControllerPageState extends State<ViewControllerPage> {
  final PageController controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: controller,
        onPageChanged: ((value) {
          globals.index;
        }),
        children: const <Widget>[
          HomePage(),
          StatsPage(),
          SearchPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
