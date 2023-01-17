import 'package:flutter/material.dart';
import 'package:music_stats/widgets/home/reprodution_history/reprodution_history_widget.dart';

import '../widgets/home/current_playing_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
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

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              currentPlaying(context),
              const SizedBox(height: 20),
              const Text(
                "Histórico de reprodução",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const ReprodutionHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
