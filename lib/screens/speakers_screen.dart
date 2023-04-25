import 'package:flutter/material.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';

class SpeakersScreen extends StatelessWidget {
  const SpeakersScreen({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: DefaultTabController(
        length: 1,
        child: Scaffold(
          backgroundColor: Colors.white60,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Jeudi 4'),
              ],
            ), // TabBar
            title: const Text('Les intervenants'),
            backgroundColor: Colors.green,
          ), // AppBar
          body: TabBarView(
            children: [
              ListViewHSpeakers(),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}

class HelloYou extends StatefulWidget {
  const HelloYou({Key? key}) : super(key: key);

  @override
  _HelloYouState createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ListViewHSpeakers extends StatelessWidget {
  final titles = ["Didier", "David", "Nicolas"];
  final subtitles = [
    "Didier est RTE sur le projet Compta\n Il vous présentera tout ce qu'il a accompli cette année",
    "David ... c'est David :)\nbla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla\nbla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ",
    "On ne présente plus Nicolas,\nil animera les keynotes"
  ];
  final photos = [
    "https://media.licdn.com/dms/image/C4D03AQF8l72lDw1w8Q/profile-displayphoto-shrink_200_200/0/1610274294913?e=1687392000&v=beta&t=xa3n0MJW08uvfdAiQZhMmlE73e_F1Fv3pRfuX_1bRQs",
    "https://media.licdn.com/dms/image/C4D03AQE2ceTht-bxtw/profile-displayphoto-shrink_200_200/0/1616663620453?e=1687392000&v=beta&t=vGoEmG_DwVbR8LmJQdK87W-eMY79MnBMUyQVb6qgiKk",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK1nHNC8VuE70TL4SREVCeFZDcZWFMt68tDfqH_JrwIg&s"
  ];
  final icons = [Icons.thunderstorm, Icons.cloud, Icons.car_crash];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  title: Text(titles[index]),
                  subtitle: Text(subtitles[index]),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(photos[index])),
                  trailing: Icon(icons[index])));
        });
  }
}
