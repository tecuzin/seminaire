import 'package:flutter/material.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../generated/assets.dart';
import '../shared/menu_drawer.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white60,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Jeudi 4'),
                Tab(text: 'Vendredi 5'),
              ],
            ), // TabBar
            title: const Text('Programme du séminaire'),
            backgroundColor: Colors.green,
          ), // AppBar
          body: TabBarView(
            children: [
              ThursdayEventsList(),
              FridayEventsList(),
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

class ThursdayEventsList extends StatelessWidget {
  final heuresJeudi = [
    "08h15-9h00",
    "9h-10h",
    "10h-10h45",
    "10h45-11h15",
    "11h15-12h30",
    "12h30-13h30",
    "13h30-14h00",
    "14h00-14h30",
    "14h30-17h00",
    "17h00-18h00"
  ];

  final sujetsJeudi = [
    "Café",
    "Plénière",
    "Table ronde",
    "Pause",
    "Conférence",
    "Buffet",
    "Temps libre",
    "Briefing activité",
    "Activité",
    "Remise des trophées et pot de clôture"
  ];

  final icons = [
    Icons.coffee,
    Icons.chat_bubble,
    Icons.meeting_room,
    Icons.coffee,
    Icons.chat,
    Icons.lunch_dining,
    Icons.rocket,
    Icons.chat,
    Icons.meeting_room,
    Icons.card_giftcard,
  ];

  final images = [
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: heuresJeudi.length,
        itemBuilder: (context, index) {
          return Card(
              child: InkWell(
                  child: ListTile(
                      title: Text(heuresJeudi[index]),
                      subtitle: Text(sujetsJeudi[index]),
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(Assets.picsLogoISAGRI)),
                      trailing: Icon(icons[index]))));
        });
  }
}

class FridayEventsList extends StatelessWidget {
  final heuresVendredi = [
    "08h15-9h00",
    "9h00-9h30",
    "9h30-10h50",
    "10h50-11h10",
    "11h10-12h30",
    "12h30-13h30",
    "13h30-14h00",
    "14h00-15h20",
    "15h20-15h30",
    "15h30-16h",
    "16h00-17h00",
    "17h00"
  ];

  final sujetsVendredi = [
    "Café",
    "Introduction",
    "Ateliers : \nSécurité : Comment renforcer la sécurité dans nos produits et services ?\nQualité : Comment renforcer la qualité de nos produits et services ?\nUX-UI ou Pyramide de succès ?\nCulture : Comment amener, incarner et vivre les changements dans notre organisation ?",
    "Pause",
    "Ateliers : \nSécurité : Comment renforcer la sécurité dans nos produits et services ?\nQualité : Comment renforcer la qualité de nos produits et services ?\nUX-UI ou Pyramide de succès ?\nCulture : Comment amener, incarner et vivre les changements dans notre organisation ?",
    "Buffet",
    "Temps libre",
    "Ateliers : \nSécurité : Comment renforcer la sécurité dans nos produits et services ?\nQualité : Comment renforcer la qualité de nos produits et services ?\nUX-UI ou Pyramide de succès ?\nCulture : Comment amener, incarner et vivre les changements dans notre organisation ?",
    "Pause",
    "Préparation restitution",
    "Restitution",
    "Départ",
  ];

  final icons = [
    Icons.coffee_outlined,
    Icons.chat_bubble_outline,
    Icons.meeting_room_outlined,
    Icons.coffee_outlined,
    Icons.meeting_room_outlined,
    Icons.lunch_dining_outlined,
    Icons.rocket_launch_outlined,
    Icons.handshake_outlined,
    Icons.coffee_outlined,
    Icons.chat_bubble_outline,
    Icons.chat_bubble_outline,
    Icons.handshake_outlined,
  ];

  final images = [
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
    Image.asset(Assets.picsLogoISAGRI),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: heuresVendredi.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  title: Text(heuresVendredi[index]),
                  subtitle: Text(sujetsVendredi[index]),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(Assets.picsLogoISAGRI)),
                  trailing: Icon(icons[index])));
        });
  }
}
