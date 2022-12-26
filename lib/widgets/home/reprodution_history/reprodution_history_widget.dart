import 'package:flutter/material.dart';

import 'package:music_stats/global/globals.dart' as globals;
import 'package:music_stats/pages/reprodution_history_page.dart';

import 'music_tile_widget.dart';

class ReprodutionHistory extends StatelessWidget {
  const ReprodutionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: globals.musics.length < 4 ? globals.musics.length : 5,
      itemBuilder: ((context, index) => index <= 3 
      ? musicTile(context, musicData: globals.musics[index])
      : seeAllButton(context)),
    );
  }
}

Widget seeAllButton(BuildContext context) {
  return Center(
    child: SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: TextButton(
        //style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ReprodutionHistoryPage(),
          )
        ),
        child: Text(
          "See all",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 16,
          ),
        ),
      ),
    )
  );
}
