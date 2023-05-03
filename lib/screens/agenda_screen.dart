import 'package:flutter/material.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../generated/assets.dart';
import '../shared/menu_drawer.dart';
import 'groups_screen.dart';

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
    "7h30-8h15",
    "08h15-9h00",
    "9h-10h15",
    "10h15-10h45",
    "10h45-11h15",
    "11h15-12h15",
    "12h15-13h30",
    "13h30-14h00",
    "14h00-14h30",
    "14h30-17h00",
    "17h00-18h00",
    "18h00"
  ];

  final sujetsJeudi = [
    "Trajet en bus depuis le parking Isagri",
    "Café",
    "Plénière",
    "Table ronde",
    "Pause",
    "Conférence + échange",
    "Buffet",
    "Temps libre",
    "Briefing activité",
    "Activité",
    "Remise des trophées et pot de clôture",
    "Trajet en bus en direction du site de Tillé (ou départ par vos propres moyens)",
  ];

  final icons = [
    Icons.bus_alert,
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
    Icons.bus_alert,
  ];

  final images = [
    Assets.agendaGo,
    Assets.agendaCoffee,
    Assets.agendaTalk,
    Assets.agendaWorkshop,
    Assets.agendaBreaktime,
    Assets.agendaTalk,
    Assets.agendaBread,
    Assets.agendaCards,
    Assets.agendaTalk,
    Assets.agendaProcess,
    Assets.agendaTalk,
    Assets.agendaGo,
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
                          child: Image(image: AssetImage(images[index]))),
                      trailing: Icon(icons[index]))));
        });
  }
}

class FridayEventsList extends StatelessWidget {
  final heuresVendredi = [
    "7h30-8h15",
    "08h15-9h00",
    "9h00-9h30",
    "9h30-10h50",
    "9h30-10h50",
    "9h30-10h50",
    "10h50-11h10",
    "11h10-12h30",
    "11h10-12h30",
    "11h10-12h30",
    "12h30-13h30",
    "13h30-14h00",
    "14h00-15h20",
    "14h00-15h20",
    "14h00-15h20",
    "15h20-15h30",
    "15h30-16h",
    "16h00-17h00",
    "17h15"
  ];

  final sujetsVendredi = [
    "Trajet en bus depuis le parking Isagri",
    "Café",
    "Introduction",
    "Ateliers : Sécurité : Comment renforcer la sécurité dans nos produits et services ?",
    "Ateliers : Qualité : Comment renforcer la qualité de nos produits et services ?",
    "Ateliers : Changement culturel : Comment amener, incarner et vivre les changements dans notre organisation ?",
    "Pause",
    "Ateliers : Sécurité : Comment renforcer la sécurité dans nos produits et services ?",
    "Ateliers : Qualité : Comment renforcer la qualité de nos produits et services ?",
    "Ateliers : Changement culturel : Comment amener, incarner et vivre les changements dans notre organisation ?",
    "Buffet",
    "Temps libre",
    "Ateliers : Sécurité : Comment renforcer la sécurité dans nos produits et services ?",
    "Ateliers : Qualité : Comment renforcer la qualité de nos produits et services ?",
    "Ateliers : Changement culturel : Comment amener, incarner et vivre les changements dans notre organisation ?",
    "Pause",
    "Préparation restitution",
    "Restitution",
    "Trajet en bus en direction du site de Tillé (ou départ par vos propres moyens)",
  ];

  final icons = [
    Icons.bus_alert_outlined,
    Icons.coffee_outlined,
    Icons.chat_bubble_outline,
    Icons.meeting_room_outlined,
    Icons.meeting_room_outlined,
    Icons.meeting_room_outlined,
    Icons.coffee_outlined,
    Icons.meeting_room_outlined,
    Icons.lunch_dining_outlined,
    Icons.rocket_launch_outlined,
    Icons.handshake_outlined,
    Icons.meeting_room_outlined,
    Icons.meeting_room_outlined,
    Icons.meeting_room_outlined,
    Icons.chat_bubble_outline,
    Icons.chat_bubble_outline,
    Icons.handshake_outlined,
    Icons.handshake_outlined,
    Icons.bus_alert_outlined,
  ];

  final images = [
    Assets.agendaGo,
    Assets.agendaBread,
    Assets.agendaTalk,
    Assets.agendaTools,
    Assets.agendaTools,
    Assets.agendaTools,
    Assets.agendaCoffee,
    Assets.agendaTools,
    Assets.agendaTools,
    Assets.agendaTools,
    Assets.agendaBread,
    Assets.agendaCards,
    Assets.agendaTools,
    Assets.agendaTools,
    Assets.agendaTools,
    Assets.agendaCoffee,
    Assets.agendaProcess,
    Assets.agendaWorkshop,
    Assets.agendaGo,
  ];

  final groupesVendredi = [
    "",
    "",
    "Les insurgés de l'innovation",
    "Les super hackers",
    "Les Ninjas du code",
    "Les rêveurs du numérique",
    "",
    "Les Ninjas du code",
    "Les rêveurs du numérique",
    "Les super hackers",
    "Les insurgés de l'innovation",
    "",
    "",
    "Les rêveurs du numérique",
    "Les insurgés de l'innovation",
    "Les super hackers",
    "Les ninjas du code",
    "",
    "Tous les animateurs",
    "",
    "",
  ];

  final sallesVendredi = [
    "",
    "",
    "308-309",
    "308-309",
    "307",
    "310",
    "",
    "307",
    "308-309",
    "308-309",
    "310",
    "",
    "",
    "307",
    "310",
    "308-309",
    "308-309",
    "",
    "",
    "",
    "",
  ];

  final animateursVendredi = [
    "",
    "Nicolas Polychronopoulos",
    "Laurent Pirard, Pascal Perez",
    "",
    "David Rochelet, Nicolas Polychronopoulos",
    "Jean-Marc Fernandez",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "Nicolas Polychronopoulos",
    "",
    "",
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
                  subtitle: Text(sujetsVendredi[index] +
                      '\n Equipes : ' +
                      groupesVendredi[index] +
                      '\n Salle(s) : ' +
                      sallesVendredi[index] +
                      '\n Animateur(s) :' +
                      animateursVendredi[index]),
                  leading: CircleAvatar(
                      child: Image(image: AssetImage(images[index]))),
                  trailing: Icon(icons[index])));
        });
  }
}

class Event {
  String picture;
  String name;
  String timestart;
  String timefinish;
  String description;
  String icon;
  Actor Speaker;

  Event(
      {required this.picture,
      required this.name,
      required this.timestart,
      required this.timefinish,
      required this.description,
      required this.icon,
      required this.Speaker});
}
