library music_stats.globals;

import 'package:flutter/material.dart';
import 'package:music_stats/pages/homepage.dart';
import 'package:music_stats/pages/profile_page.dart';
import 'package:music_stats/pages/search_page.dart';
import 'package:music_stats/pages/stats_page.dart';

int index = 0;

PageController pageController = PageController(initialPage: 0);

const List<Widget> pages = [
  HomePage(),
  StatsPage(),
  SearchPage(),
  ProfilePage(),
];
