import 'package:flutter/material.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Contacts utiles'),
            backgroundColor: Colors.green),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: Container(
          child: HowToComeList(),
        ));
// MaterialApp
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

class HowToComeList extends StatelessWidget {
  final titles = [
    "Organisation, programme",
    "Transport en bus",
    "Salle de séminaire",
    "******** URGENCES ********"
  ];
  final subtitles = [
    "Nicolas : 00 00 00 00 00",
    "Pour le transport en bus : David 06 42 41 93 99",
    "Contact de l'hôte du séminaire : 00 00 00 00 00",
    "SST, Mr Sauveteur : 00 00 00 00 00\nPompiers : 18",
  ];
  final photos = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVN-Y9YhP_i-TO5WNXaWLj6RYSQuegtTEufA&usqp=CAU",
    "https://assets.volvo.com/is/image/VolvoInformationTechnologyAB/1860x1050-Volvo-7900-Electric-front45?qlt=82&wid=512&ts=1629796816923&dpr=off&fit=constrain",
    "https://chateaudemercues.com/_novaimg/4374716-1361023_257_0_1035_875_650_550.jpg",
    "https://www.accueil-temporaire.com/sites/default/files/public/urgence_0.jpg",
  ];
  final icons = [Icons.thunderstorm, Icons.cloud, Icons.car_crash, Icons.man];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(20),
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
