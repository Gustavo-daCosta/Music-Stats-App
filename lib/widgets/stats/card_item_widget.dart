import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Map musicData;
  final int index;

  const CardItem({
    Key? key,
    required this.musicData,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 115,
          alignment: Alignment.bottomLeft,
          //padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(musicData['imagePath']),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: index < 9 ? 35 : 45,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                // topLeft: Radius.circular(15),
              ),
            ),
            child: Text(
              "#${index + 1}",
              style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Flexible(
          child: Text(
            musicData['title'],
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Flexible(
          child: Text(
            musicData['artist'],
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
