import 'package:flutter/material.dart';
import 'package:music_stats/global/globals.dart' as globals;
import 'package:music_stats/widgets/profile/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        centerTitle: false,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.share_rounded,
              size: 28,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const ProfileWidget(),
            const SizedBox(height: 15),
            const Text(
              "Artistas mais escutados",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            // LISTA DE ARTISTAS MAIS ESCUTADOS

            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: globals.artists.length,
                itemBuilder: (context, index) => artistItem(index),
              ),
            ),
          ],
        ),
      )
    );
  }
}

Widget artistItem(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
    child: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(globals.artists[index]['photoPath']!),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          //child: Image.asset(globals.artists[index]['photoPath']!),
        ),
        SizedBox(
          width: 100,
          child: Text(
            globals.artists[index]['name']!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    ),
  );
}
