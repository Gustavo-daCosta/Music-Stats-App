import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_stats/global/globals.dart' as globals;

// index = 0 ao 17
// length = 18

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: ((globals.musics.length <= 20 ? globals.musics.length : 20) / 2).ceil(),
      itemBuilder: (context, index, realIndex) {
        final List pairList = [];
        final List oddList = [];

        for (final music in globals.musics) {
          final int index = globals.musics.indexOf(music);
          if (index % 2 == 0) {
            pairList.add(music);
          } else {
            oddList.add(music);
          }
        }
        return carouselItem(index, pairList, oddList);
      },
      options: CarouselOptions(
        height: 150,
        aspectRatio: 1/1,
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds: 3000),
        autoPlayAnimationDuration: const Duration(milliseconds: 3000),
        autoPlayCurve: Curves.linear,
        pauseAutoPlayInFiniteScroll: false,
        pauseAutoPlayOnManualNavigate: false,
        pauseAutoPlayOnTouch: false,
        //reverse: true,
      ),
    );
  }
}

Widget carouselItem(int index, List pairList, List oddList) {
  return Row(
    children: [
      Expanded(
        child: Image.asset(
          pairList[index]['imagePath']!,
          fit: BoxFit.cover,
        ),
      ),
      Expanded(
        child: Image.asset(
          oddList[index]['imagePath']!,
          fit: BoxFit.cover,
        ),
      ),
      //Container(width: 3, color: Colors.black),
    ],
  );
}
