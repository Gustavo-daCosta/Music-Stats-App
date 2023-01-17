library music_stats.globals;

import 'package:flutter/material.dart';
import 'package:music_stats/pages/homepage.dart';
import 'package:music_stats/pages/profile_page.dart';
import 'package:music_stats/pages/search_page.dart';
import 'package:music_stats/pages/stats_page.dart';


final List<Map<String, String>> artists = [
  {
    "name": "Frank Ocean",
    "photoPath": "assets/artists/frank-ocean.png",
  },
  {
    "name": "Tyler, The Creator",
    "photoPath": "assets/artists/tyler-the-creator.png",
  },
  {
    "name": "Beach House",
    "photoPath": "assets/artists/beach-house.png",
  },
  {
    "name": "Wasia Project",
    "photoPath": "assets/artists/wasia-project.png",
  },
  {
    "name": "Bruno Mars",
    "photoPath": "assets/artists/bruno-mars.png",
  },
  {
    "name": "Two Door Cinema Club",
    "photoPath": "assets/artists/two-door-cinema-club.png",
  },
  {
    "name": "The Strokes",
    "photoPath": "assets/artists/the-strokes.png",
  },
  {
    "name": "Black Country, New Road",
    "photoPath": "black-country-new-road.png"
  }
];


final List<Map<String, String>> musics = [
  {
    "title": "Basketball Shoes",
    "artist": "Black Country, New Road",
    "imagePath": "assets/music-covers/Ants_from_Up_There_-_Black_Country,_New_Road.jpg",
  },
  {
    "title": "Finesse",
    "artist": "Bruno Mars",
    "imagePath": "assets/music-covers/Bruno_Mars-24K_Magic.jpg",
  },
  {
    "title": "impossible",
    "artist": "Wasia Project",
    "imagePath": "assets/music-covers/how-can-i-pretend.jpeg",
  },
  {
    "title": "What You Know",
    "artist": "Two Door Cinema Club",
    "imagePath": "assets/music-covers/tourist-history.jpg",
  },
  {
    "title": "The Adults Are Talking",
    "artist": "The Strokes",
    "imagePath": "assets/music-covers/the-new-abnormal-the-strokes-album-cover.jpg",
  },
  {
    "title": "GONE, GONE / THANK YOU",
    "artist": "Tyler, The Creator",
    "imagePath": "assets/music-covers/igor.jpg",
  },
  {
    "title": "Space Song",
    "artist": "Beach House",
    "imagePath": "assets/music-covers/space-song.jpg",
  },
  {
    "title": "Seigfried",
    "artist": "Frank Ocean",
    "imagePath": "assets/music-covers/blond.jpg",
  },
  {
    "title": "911 / Mr.Lonely (feat. Frank Ocean & Steve Lacy)",
    "artist": "Tyler, The Creator, Frank Ocean, Steve Lacy",
    "imagePath": "assets/music-covers/flower-boy.jpg",
  },
  {
    "title": "Basketball Shoes",
    "artist": "Black Country, New Road",
    "imagePath": "assets/music-covers/Ants_from_Up_There_-_Black_Country,_New_Road.jpg",
  },
  {
    "title": "Finesse",
    "artist": "Bruno Mars",
    "imagePath": "assets/music-covers/Bruno_Mars-24K_Magic.jpg",
  },
  {
    "title": "impossible",
    "artist": "Wasia Project",
    "imagePath": "assets/music-covers/how-can-i-pretend.jpeg",
  },
  {
    "title": "What You Know",
    "artist": "Two Door Cinema Club",
    "imagePath": "assets/music-covers/tourist-history.jpg",
  },
  {
    "title": "The Adults Are Talking",
    "artist": "The Strokes",
    "imagePath": "assets/music-covers/the-new-abnormal-the-strokes-album-cover.jpg",
  },
  {
    "title": "GONE, GONE / THANK YOU",
    "artist": "Tyler, The Creator",
    "imagePath": "assets/music-covers/igor.jpg",
  },
  {
    "title": "Space Song",
    "artist": "Beach House",
    "imagePath": "assets/music-covers/space-song.jpg",
  },
  {
    "title": "Seigfried",
    "artist": "Frank Ocean",
    "imagePath": "assets/music-covers/blond.jpg",
  },
  {
    "title": "911 / Mr.Lonely (feat. Frank Ocean & Steve Lacy)",
    "artist": "Tyler, The Creator, Frank Ocean, Steve Lacy",
    "imagePath": "assets/music-covers/flower-boy.jpg",
  },
];

const List<Widget> pages = [
  HomePage(),
  StatsPage(),
  SearchPage(),
  ProfilePage(),
];
