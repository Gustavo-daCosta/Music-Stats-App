import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(
          Icons.search_rounded,
          size: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
