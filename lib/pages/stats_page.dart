import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stats Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(
          Icons.graphic_eq_rounded,
          size: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
