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
    return GridTile(
      footer: GridTileBar(
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "#$index ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.fade,
                ),
              ),
              TextSpan(
                text: musicData["title"],
                style: const TextStyle(
                  overflow: TextOverflow.fade,
                ),
              ),
            ]
          ),
        ),
        subtitle: Text(musicData['artist']),
      ),
      child: Container(
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
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              //topLeft: Radius.circular(15),
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
    );
  }
}


/*Flexible(
          child: ListTile(
            title: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "#$index ",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextSpan(
                    text: musicData["title"],
                    style: const TextStyle(
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ]
              ),
            ),
            subtitle: Text(musicData['artist']),
          ),
        ),*/