import 'package:flutter/material.dart';

import 'package:music_stats/global/globals.dart' as globals;
import 'package:music_stats/widgets/home/reprodution_history/music_tile_widget.dart';

class ReprodutionHistoryPage extends StatelessWidget {
  const ReprodutionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text("Reprodution History"),
        iconTheme: const IconThemeData(size: 28),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: globals.musics.length,
          itemBuilder: ((context, index) => musicTile(
            context, musicData: globals.musics[index],
          )),
        ),
      ),
    );
  }
}
