import 'package:flutter/material.dart';

import 'music_cover_widget.dart';

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
