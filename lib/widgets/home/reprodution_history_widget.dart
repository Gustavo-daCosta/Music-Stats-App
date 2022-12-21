import 'package:flutter/material.dart';

class ReprodutionHistory extends StatelessWidget {
  final List<Map> musics = [
    {
      "imagePath": "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg",
      "title": "Basketball Shoes",
      "artist": "Black Country, New Road"
    },
    {
      "imagePath": "assets/images/Bruno_Mars-24K_Magic.jpg",
      "title": "Finesse",
      "artist": "Bruno Mars",
    },
    {
      "imagePath": "assets/images/how-can-i-pretend.jpeg",
      "title": "impossible",
      "artist": "Wasia Project",
    },
    {
      "imagePath": "assets/images/tourist-history.jpg",
      "title": "What You Know",
      "artist": "Two Door Cinema Club",
    },
  ];

  ReprodutionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: ((context, index) => musicTile(context, musicData: musics[index])),
    );
    /*return ListView(
      //shrinkWrap: true,
      children: <Widget>[
        musicTile(
          context,
          musicCoverPath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg",
          musicTitle: "Basketball Shoes",
          musicArtist: "Black Country, New Road",
        ),
        musicTile(
          context,
          musicCoverPath: "",
          musicTitle: "",
          musicArtist: "",
        ),
      ],
    );*/
  }
}

Widget musicTile(BuildContext context, {required Map musicData}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: <Widget>[
        musicCoverLeading(
          context,
          musicImagePath: musicData["imagePath"],
        ),
        Expanded(
          child: ListTile(
            title: Text(
              musicData["title"],
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            subtitle: Text(musicData["artist"]),
            trailing: Icon(
              Icons.history,
              size: 26,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.7),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget musicCoverLeading(BuildContext context, {required String musicImagePath}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: SizedBox(
      width: 58,
      height: 58,
      child: Stack(
        children: <Widget>[

          // Container preto da parte de trás
          Positioned(
            top: 3,
            bottom: 0,
            left: 2,
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Container para imagem do álbum
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  musicImagePath,
                ),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
