import 'package:flutter/material.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class HowtocomeScreen extends StatelessWidget {
  const HowtocomeScreen({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Venir au séminaire'), backgroundColor: Colors.green),
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
  final String place =
      "Campus Serge Kampf Les Fontaines\n67 Rue de Chantilly, 60270 Gouvieux";
  final titles = [
    "Par la route",
    "En bus",
    "En covoiturage",
    "A pied, à vélo, à cheval"
  ];
  final subtitles = [
    "Lien Google Maps : https://goo.gl/maps/pfA3xU4Nxhbm9X4e9",
    "Départ 8h parking Isagri\nRetour 22h",
    "Trajet Klaxit : https://www.klaxit.com",
    "Rendez-vous directement à l'adresse :\n" +
        "Campus Serge Kampf Les Fontaines\n67 Rue de Chantilly, 60270 Gouvieux",
  ];
  final photos = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVN-Y9YhP_i-TO5WNXaWLj6RYSQuegtTEufA&usqp=CAU",
    "https://assets.volvo.com/is/image/VolvoInformationTechnologyAB/1860x1050-Volvo-7900-Electric-front45?qlt=82&wid=512&ts=1629796816923&dpr=off&fit=constrain",
    "https://d2pgkmld22m7v7.cloudfront.net/assets/images/screens__0-2e04a04054984254eb327860247be72ecf13a4c7f3aa0f9bfd7e799c4eba3341.jpg",
    "https://www.vacances-catho.fr/wp-content/uploads/2020/12/dsc4468-2019-1024x683-1.jpg",
  ];
  final icons = [
    Icons.car_crash_outlined,
    Icons.bus_alert,
    Icons.share,
    Icons.man
  ];
  final urlToOpen = [
    "https://goo.gl/maps/c5YuyMM69JHuPbUh7",
    "",
    "https://www.klaxit.com",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: InkWell(
                  onTap: () => _launchURL(urlToOpen[index]),
                  //child: new Text('Ouvrir dans Maps'),
                  child: ListTile(
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(photos[index])),
                      trailing: Icon(icons[index]))));
        });
  }

  _launchURL(url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
