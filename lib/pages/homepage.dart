import 'package:flutter/material.dart';

import '../widgets/bottom_bar_widget.dart';
import '../widgets/home/current_playing_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            "Visão Geral",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),

        bottomNavigationBar: const BottomBar(),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              currentPlaying(context),
            ],
          ),
        ),
      ),
    );
  }
}
