library music_stats.globals;

import 'package:flutter/material.dart';
import 'package:music_stats/pages/homepage.dart';
import 'package:music_stats/pages/profile_page.dart';
import 'package:music_stats/pages/search_page.dart';
import 'package:music_stats/pages/stats_page.dart';

final List<Map> musics = [
  {
    "title": "Basketball Shoes",
    "artist": "Black Country, New Road",
    "imagePath": "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg",
  },
  {
    "title": "Finesse",
    "artist": "Bruno Mars",
    "imagePath": "assets/images/Bruno_Mars-24K_Magic.jpg",
  },
  {
    "title": "impossible",
    "artist": "Wasia Project",
    "imagePath": "assets/images/how-can-i-pretend.jpeg",
  },
  {
    "title": "What You Know",
    "artist": "Two Door Cinema Club",
    "imagePath": "assets/images/tourist-history.jpg",
  },
  {
    "title": "The Adults Are Talking",
    "artist": "The Strokes",
    "imagePath": "assets/images/the-new-abnormal-the-strokes-album-cover.jpg",
  },
  {
    "title": "GONE, GONE / THANK YOU",
    "artist": "Tyler, The Creator",
    "imagePath": "assets/images/igor.jpg",
  },
  {
    "title": "Space Song",
    "artist": "Beach House",
    "imagePath": "assets/images/space-song.jpg",
  },
  {
    "title": "Seigfried",
    "artist": "Frank Ocean",
    "imagePath": "assets/images/blond.jpg",
  },
  {
    "title": "911 / Mr.Lonely (feat. Frank Ocean & Steve Lacy)",
    "artist": "Tyler, The Creator, Frank Ocean, Steve Lacy",
    "imagePath": "assets/images/flower-boy.jpg",
  },
];

const List<Widget> pages = [
  HomePage(),
  StatsPage(),
  SearchPage(),
  ProfilePage(),
];
