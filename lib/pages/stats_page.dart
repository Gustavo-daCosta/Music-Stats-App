import 'package:flutter/material.dart';

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

List itens = const <Widget>[
  CardItem(
    imagePath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg",

  ),
  CardItem(imagePath: "assets/images/Bruno_Mars-24K_Magic.jpg"),
  CardItem(imagePath: "assets/images/how-can-i-pretend.jpeg"),
  CardItem(imagePath: "assets/images/Bruno_Mars-24K_Magic.jpg"),
  CardItem(imagePath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg"),
  CardItem(imagePath: "assets/images/how-can-i-pretend.jpeg"),
  CardItem(imagePath: "assets/images/how-can-i-pretend.jpeg"),
  CardItem(imagePath: "assets/images/Bruno_Mars-24K_Magic.jpg"),
  CardItem(imagePath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg"),
];

class StatsGridView extends StatelessWidget {
  final String time;

  const StatsGridView(this.time, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Text("Music #$index");
      },
    );


    /*return GridView.count(
      crossAxisCount: 3,
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: const <Widget>[
        CardItem(imagePath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg"),
        CardItem(imagePath: "assets/images/Bruno_Mars-24K_Magic.jpg"),
        CardItem(imagePath: "assets/images/how-can-i-pretend.jpeg"),
        CardItem(imagePath: "assets/images/Bruno_Mars-24K_Magic.jpg"),
        CardItem(imagePath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg"),
        CardItem(imagePath: "assets/images/how-can-i-pretend.jpeg"),
        CardItem(imagePath: "assets/images/how-can-i-pretend.jpeg"),
        CardItem(imagePath: "assets/images/Bruno_Mars-24K_Magic.jpg"),
        CardItem(imagePath: "assets/images/Ants_from_Up_There_-_Black_Country,_New_Road.jpg"),
      ],
    );*/


  }
}

class CardItem extends StatelessWidget {
  // final Color color;
  final String imagePath;

  const CardItem({
    Key? key,
    // required this.color,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      //padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15)),
        ),
        child: Text(
          "#1",
          style: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
