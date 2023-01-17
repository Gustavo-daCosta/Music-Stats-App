import 'package:flutter/material.dart';

Widget currentPlaying(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 8,
    ),
    child: SizedBox(
      width: double.infinity,
      height: 160,
      child: Container(
        decoration: const BoxDecoration(
          //color: Colors.grey.shade400,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // current playing title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              child: Text(
                "Escutando agora no Spotify",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
    
            // Row com imagem da música, título, artista e tempo da música, com barra de progresso
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Container(
                    height: 130,
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/music-covers/the-new-abnormal-the-strokes-album-cover.jpg")
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.62,
                  //color: Colors.green,
                  height: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: const Text(
                            "The Adults Are Talking",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                        ),
                      ),
                      const Text("The Strokes"),
                      const SizedBox(
                        height: 55,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text("1:50"),
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Text("2:44"),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(right: 6, bottom: 8),
                        child: LinearProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                          value: 0.7,
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
