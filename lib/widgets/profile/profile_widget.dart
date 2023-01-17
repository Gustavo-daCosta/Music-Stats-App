import 'package:flutter/material.dart';
import 'package:music_stats/widgets/profile/carousel_slider_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const CarouselSliderWidget(),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
              thickness: 2.5,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10, top: 8),
              width: (MediaQuery.of(context).size.width / 2) - 10,
              //color: Colors.teal,
              child: userName(),
            ),
          ],
        ),
        profilePicture(
          size: 170,
          borderColor: Theme.of(context).primaryColor,
        ),
      ]
    );
  }
}

Widget userName() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        "assets/icons/spotify-icon.png",
        width: 30,
      ),
      const SizedBox(width: 5),
      const Flexible(
        child: Text(
          "Snorlax",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    ],
  );
}

Widget profilePicture({required double size, required Color borderColor}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 60,
      left: 10,
    ),
    child: Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(size),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size),
          image: const DecorationImage(
            image: AssetImage("assets/pictures/snorlax.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}
