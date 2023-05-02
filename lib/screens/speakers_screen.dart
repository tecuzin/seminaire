import 'package:flutter/material.dart';
import 'package:seminaire/generated/assets.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

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
                Tab(text: 'Exercice 2022-23'),
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
  final titles = [
    "Laurent Pirard",
    "Pascal Perez",
    "Nicolas Polychronopoulos",
    "David Rochelet",
    "Jean-Marc Fernandez",
    "Laura Lange",
    "Yohan Remi",
    "Thierry Hardion"
  ];
  final subtitles = [
    "Directeur technique Isagri\nEn charge de la veille technique,  des frameworks internes et de l’architecture applicative",
    "Mes 15 premières années professionnelles se sont déroulées dans le domaine de l’aéronautique à concevoir des systèmes avec une considération particulière pour la sécurité.\nPuis l’opportunité s’est présentée pour moi de prendre un poste de RSSI toujours dans un contexte d’édition logicielle où j’ai mis en place et obtenu une certification pour la norme ISO 27001 - 2013 (252 exigences).\nAujourd’hui je suis consultant indépendant dans le domaine de la sécurité et à ce titre je vous rejoins en tant qu’Architecte Sécurité.\n",
    "",
    "",
    "",
    "",
    "Actuellement architecte affilié à GIGED, j’ai un peu d’expérience en Domain Driven Design et en diverses petites choses que je mets à profit pour accompagner du mieux que je peux le train.",
    "Je suis spécialisé depuis 30 ans dans la conception de logiciels de gestion pour les TPE PME et la profession comptable.\ns dernières années, je suis particulièrement impliqué dans la contribution des éditeurs de logiciels à la simplification et l'efficacité des relations informatiques entre les entreprises et les administrations, en tant de vice-président de l'association SDDS.\nLa réforme de la facture électronique est mon quotidien depuis 2019 et j'espère œuvrer à sa réussite pour nos clients, car je suis convaincu qu'elle sera bénéfique pour tous.\nL'enjeu est que les 4 millions d'entreprises françaises la comprennent bien et soient prêtes en juillet 2024.\nJe m'intéresse particulièrement à toutes les initiatives permettant d'expliquer simplement cette réforme",
  ];
  final photos = [
    Assets.picsLpirard,
    Assets.picsPperez,
    Assets.picsSpeaker,
    Assets.picsDrochelet,
    Assets.picsSpeaker,
    Assets.picsSpeaker,
    Assets.picsSpeaker,
    Assets.picsThardion,
  ];
  final icons = [
    Icons.security_sharp,
    Icons.security_sharp,
    Icons.manage_accounts,
    Icons.search,
    Icons.manage_accounts,
    Icons.people,
    Icons.security_sharp,
    Icons.manage_accounts,
  ];
  final urlToOpen = [
    "https://www.linkedin.com/in/laurent-pirard-4820b0109/",
    "https://fr.linkedin.com/in/pascalperezsec",
    "https://www.linkedin.com/in/nipolychr/",
    "https://www.linkedin.com/in/david-rochelet-048834ab/",
    "https://www.linkedin.com/in/jmarcfernandez/",
    "https://www.lauralange.fr/",
    "https://www.linkedin.com/in/yoannremy/",
    "https://www.linkedin.com/in/thierry-hardion-519442a4/",
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
                  child: ListTile(
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: CircleAvatar(
                          child: Image(image: AssetImage(photos[index]))),
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
