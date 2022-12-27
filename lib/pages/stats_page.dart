import 'package:flutter/material.dart';

import 'package:music_stats/global/globals.dart' as globals;
import 'package:music_stats/widgets/stats/card_item_widget.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Stats Page"),
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            unselectedLabelColor: Theme.of(context).primaryColor.withOpacity(0.5),
            unselectedLabelStyle: const TextStyle(fontSize: 16),
            indicatorColor: Theme.of(context).primaryColor, 
            tabs: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Tab(text: "4 semanas"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Tab(text: "6 meses"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Tab(text: "Todo o tempo"),
              ),
            ],
          ),
        ),
        body: const SafeArea(
          bottom: false,
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              StatsGridView("4 weeks"),
              StatsGridView("6 months"),
              StatsGridView("all time"),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsGridView extends StatelessWidget {
  final String time;
  static List<Map> musics = globals.musics;

  const StatsGridView(this.time, {super.key});

  @override
  Widget build(BuildContext context) {
    musics.shuffle();
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
      ),
      itemCount: musics.length,
      itemBuilder: (context, index) => CardItem(musicData: musics[index], index: index),
    );
  }
}
