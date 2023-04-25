import 'package:flutter/material.dart';
import 'package:seminaire/shared/menu_bottom.dart';
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
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
            title: Text("9h30 - 9h45 : Présentation des objectifs du séminaire"),
            subtitle: Text("Introduction à ces deux journées d'échange et de réflexion sur l'avenir du développement chez Isagri"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://assets.afcdn.com/story/20191030/2029701_w944h530c1cx3891cy1966cxt0cyt0cxb5760cyb3840.webp")),
            trailing: Icon(Icons.chat_bubble_outline)),
        ListTile( title: Text("9h45 - 10h30 : Bilan mi-année"),subtitle: Text("Rétrospective de la première moitié de dl'exércice"), leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1343389492/fr/vectoriel/des-gens-minuscules-avec-un-puzzle-les-hommes-et-les-femmes-collectionnent-de-grandes.webp?s=2048x2048&w=is&k=20&c=gxwl1utvl9blwQFaGsTlIjSEVzWNdnHwceAqT8bv4RY=")), trailing: Icon(Icons.chat_bubble_outline)),
        ListTile( title: Text("11h15 - 11h30 : Pause"),subtitle: Text("Petit  pause avant d'attaquer la seconde partie de cette matinée"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.coffee_outlined)),
        ListTile( title: Text("11h30 - 13h00 : Vision globale des chantiers en cours"),subtitle: Text("Présentation des chantiers en corus afin de donner à chacun une vue d'ensemble"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.chat_bubble_outline)),
        ListTile( title: Text("13h00 - 14h00 : Déjeuner"),subtitle: Text("On se retrouve au restaurant d'entreprise"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://www.lagazettedescommunes.com/wp-content/uploads/2019/09/pause-temps-mort-310x207.jpg")), trailing: Icon(Icons.lunch_dining_outlined)),
        ListTile( title: Text("14h00 - 14h30 : Programme alternants"),subtitle: Text("- Partage de la vision, apports et bénéfices pour les équipes\n- Déterminer les offres\n- Qui va assurer les recrutements ?\n- Affectation des 10/12 alternants potentiels"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://www.lagazettedescommunes.com/wp-content/uploads/2019/09/pause-temps-mort-310x207.jpg")), trailing: Icon(Icons.chat_bubble_outline)),
        ListTile( title: Text("14h30 - 15h45 : REX du module Immos"),subtitle: Text("- Contexte du projet\n- Qu'est-ce qui a été fait ?\n - Retours : ce qui a été appris, ce qui a fonctionné, quels ont été les freins, les prochaines étapes ?"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://www.lagazettedescommunes.com/wp-content/uploads/2019/09/pause-temps-mort-310x207.jpg")), trailing: Icon(Icons.chat_bubble_outline)),
        ListTile( title: Text("15h45 - 16h00 : Pause"),subtitle: Text("Petit  pause avant d'attaquer la seconde partie de cette après-midi"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.coffee_outlined)),
        ListTile( title: Text("17h00 - 18h30 : Aller vers le Web"),subtitle: Text("- Quelles sont nos forces ?\n- Qu'est-ce qui nous manque, nous freine ?\n- Quelles actions mettre en place ?\n\nMettre en place des groupes et travailler sur le sujet pour aussi résoudre les points suivants :\n- Identification des compétences clefs (techno, langages, méthodes, outils, design (DDD ?) …)\n- Plan de montée en compétence\n- Enablers à enclencher pour « accélérer »"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.workspaces_outlined)),
        ListTile( title: Text("19h00 : Dîner"),subtitle: Text("Pour finir en beauté cette première journée"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.lunch_dining_rounded)),
      ],
    );
  }
}

class FridayEventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
            title: Text("9h - 10h30 : Suite exercice de la veille \"Aller vers le Web\""),
            subtitle: Text("- Définir les raisons racine qui nous empêchent d'avancer\n- Voter sur les sujets\n- Traiter en groupes les sujets à traiter en priorité avec plan d'actions à construire"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://assets.afcdn.com/story/20191030/2029701_w944h530c1cx3891cy1966cxt0cyt0cxb5760cyb3840.webp")),
            trailing: Icon(Icons.workspaces)),
        ListTile( title: Text("10h30 - 10h45 : Pause"),subtitle: Text("Petit  pause avant d'attaquer la seconde partie de cette matinée"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.coffee)),
        ListTile( title: Text("10h45 - 13h00 : Restitution des groupes de travail et prise de décisions"),subtitle: Text("Restitution, partages, Q&A, décisions"), leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1343389492/fr/vectoriel/des-gens-minuscules-avec-un-puzzle-les-hommes-et-les-femmes-collectionnent-de-grandes.webp?s=2048x2048&w=is&k=20&c=gxwl1utvl9blwQFaGsTlIjSEVzWNdnHwceAqT8bv4RY=")), trailing: Icon(Icons.chat_bubble_rounded)),
        ListTile( title: Text("13h00 - 14h00 : Déjeuner restaurant d'entreprise"),subtitle: Text("Mi-temps avant d'attaquer la dernière demi-journée"), leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1343389492/fr/vectoriel/des-gens-minuscules-avec-un-puzzle-les-hommes-et-les-femmes-collectionnent-de-grandes.webp?s=2048x2048&w=is&k=20&c=gxwl1utvl9blwQFaGsTlIjSEVzWNdnHwceAqT8bv4RY=")), trailing: Icon(Icons.lunch_dining_rounded)),
        ListTile( title: Text("14h00 - 15h15 : ART Sync"),subtitle: Text("Pour tout savoir"), leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1343389492/fr/vectoriel/des-gens-minuscules-avec-un-puzzle-les-hommes-et-les-femmes-collectionnent-de-grandes.webp?s=2048x2048&w=is&k=20&c=gxwl1utvl9blwQFaGsTlIjSEVzWNdnHwceAqT8bv4RY=")), trailing: Icon(Icons.workspaces)),
        ListTile( title: Text("15h15 - 15h30 : Pause"),subtitle: Text("Petit  pause avant d'attaquer la seconde partie de cette après-midi"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.coffee)),
        ListTile( title: Text("15h30 - 16h00 : Le rôle du DBA"),subtitle: Text("Pour tout savoir sur ce rôle mal connu"), leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1343389492/fr/vectoriel/des-gens-minuscules-avec-un-puzzle-les-hommes-et-les-femmes-collectionnent-de-grandes.webp?s=2048x2048&w=is&k=20&c=gxwl1utvl9blwQFaGsTlIjSEVzWNdnHwceAqT8bv4RY=")), trailing: Icon(Icons.chat_bubble_rounded)),
        ListTile( title: Text("16h00 - 17h00 : ROTI et tour de table"),subtitle: Text("Dernier échange avant de reprendre la route"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/fr/thumb/d/d8/Apple_Keynote.jpeg/220px-Apple_Keynote.jpeg")), trailing: Icon(Icons.handshake_rounded)),
      ],
    );
  }
}