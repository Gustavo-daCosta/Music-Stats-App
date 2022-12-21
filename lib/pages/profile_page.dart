import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(
          Icons.person_rounded,
          size: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
