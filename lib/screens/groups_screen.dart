import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Liste des participants et groupes'),
            backgroundColor: Colors.green),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: Container(
          child: GroupList(),
        ));
// MaterialApp
  }
}

class GroupList extends StatefulWidget {
  const GroupList({Key? key}) : super(key: key);

  @override
  State<GroupList> createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  final List<Actor> actors = [
    Actor(day: "Jeudi", name: 'Adrien BARGIBANT', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Adrien Lazaro',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Adrien LEFRANCOIS',
        groupName: 'Digital Mavericks'),
    Actor(
        day: "Jeudi", name: 'Alexandre KUYUMCU', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Alexis TALMANT', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Alice BOULANGER', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Alice CELIGNY', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Alice ROUCOUS', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Alicia GRIOCHE', groupName: 'Digital Dragons'),
    Actor(
        day: "Jeudi", name: 'Amandine BUREAU', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Amélie ALLIX', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Amélie SCHNEIDER', groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi",
        name: 'Annie GAROT',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Anthony BOUTEILLER', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Anthony HIVERT', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Anthony MORIAUX', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Antoine BISCH', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Antoine DANO', groupName: 'Future Founders'),
    Actor(
        day: "Jeudi",
        name: 'Antoine GALANDON',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi", name: 'Antoine NORTIER', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Antoine PRUVOST', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Arnaud BETTEMBOT', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi",
        name: 'Arnaud DESMAZES',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Arnaud DROUET',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Arnaud LEBON', groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi", name: 'Arnaud MAGNIEZ', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Audrey BEUVRIER', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Augustin DENDIEVEL',
        groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Aurélie CORNEN', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Axel DJENADI', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Axel GODIN', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Bastien CLUS', groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi", name: 'Bastien LANGUEDOC', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Benjamin POTIN', groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi",
        name: 'Benoit GUILLAUMIN',
        groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi",
        name: 'Benoit LOUZEAU',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Benoît ORTEGA', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Benoit PIONNIER', groupName: 'Digital Dragons'),
    Actor(
        day: "Jeudi",
        name: 'Bernard LE BOULICAUT',
        groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Bertrand DOLET', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Brayan DECAGNY', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi",
        name: 'Bruno TURQUET DE LA BOISSERIE',
        groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Carine BLASCO', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Carl SANZ', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi", name: 'Carmelo SAMMARTINO', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Catherine AA', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Cécile HODENCQ', groupName: 'Techno Tribe'),
    Actor(
        day: "Jeudi",
        name: 'Cécile LEROUZIC',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Cécile PINCENT', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Cédric GERARD', groupName: 'Circuit Crazies'),
    Actor(
        day: "Jeudi", name: 'Cédric LE BOURLOUT', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Cédric TROUVÉ', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi", name: 'Céline ANGUELU', groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Céline PLAETE', groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi",
        name: 'Christelle MALAHIEUDE',
        groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi",
        name: 'Christelle PETIT',
        groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi",
        name: 'Christine AMBROISE',
        groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Christophe BARRE', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Christophe GRATADOUR', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi",
        name: 'Chrystèle GIUMMARRA',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Clément POIREL', groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi",
        name: 'Corentin BANTEIGNIE',
        groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Cynthia RENAU', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Cyril GRANDCOIN', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Damien LEFRANC', groupName: 'Future Founders'),
    Actor(
        day: "Jeudi",
        name: 'Damien LEGOULLON',
        groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi", name: 'Damien MORTIER', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi", name: 'Damien ZBORALA', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'David FROMONT', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'David HILPIPRE', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'David ROCHELET', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'David VALENTIN', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Delphine BLUNT', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Diana FAVRE', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Didier SICRE', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Donatien BRESZCZYNSKI',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Edouard MONCHY', groupName: 'NextGen Innovators'),
    Actor(
        day: "Jeudi",
        name: 'Edwige VALOUR-DUMOULIN',
        groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Elyes REGGAD', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Emeric VIGNERON', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Emilie WASCHEUL', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Emmanuel BOLLOTTE',
        groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi", name: 'Etienne NICOLAS', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Evelyne BIANCHI', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Fabien FINANCE', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Fabrice GUIONNET', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi",
        name: 'Fabrice MATONDO MARANATHA',
        groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Florent RIMBERT', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Florian DEPATIN', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Florian FRAT', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Florian LOEUILLET',
        groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Florian RIGAL', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Florian TANAY', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Franck LEROY', groupName: 'Techno Tribe'),
    Actor(
        day: "Jeudi",
        name: 'François-Xavier VREL',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Frédéric COPPIN',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Frédéric KERNALLEGUEN',
        groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Frédéric POUYEZ',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Gabriel LEFEBVRE', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Gabriel SIMON', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Gaël MENARD', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Gaël SURTET', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Gaëlle PREVOT', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Geoffrey GESLIN', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Géraldine MACRON',
        groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Gilda PARISOT', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Gildas LE BOURNAULT', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Gregory DENYS', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi",
        name: 'Guillaume BERINGER',
        groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Guillaume BOUCHER', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Guillaume RIFFAUD', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Guillaume ROUCOUS', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi", name: 'Guillaume SERVIEN', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Guy CLUET', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Gwenola LEVESQUE',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Hervé DREVILLON', groupName: 'The Tech Savants'),
    Actor(
        day: "Jeudi", name: 'Isabelle COUVREUR', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Issa KONATE', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi", name: 'Jean DREVILLON', groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi", name: 'Jean-Baptiste MERAND', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Hugues CHEVALLIER',
        groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Marc FERNANDEZ',
        groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Philippe BABKA',
        groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Jean-Yves BAYARD', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Jeremie NANTIER', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Jérémy FAVRE', groupName: 'The Tech Savants'),
    Actor(
        day: "Jeudi", name: 'Jeremy GUIBERT', groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi", name: 'Jérémy LEFRANC', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Jeremy MARCHERAS', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Jérémy ROYER', groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi", name: 'Jérôme GAINCHE', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Jérôme LALOT', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Jimmy WIMS', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Johann FAYOLLE', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'John CLOUT', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Jonathan CRESSY', groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi", name: 'Jonathan DOMINGUEZ', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Jonathan FOURMOND', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi",
        name: 'Jonathan GALLAIS ',
        groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Julie CHOPIN', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Julien BEGARD', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Julien CARTIER', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Julien HEMERY', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Julien HOUPIN', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Juliette LEROUX', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Justine GAFFEZ',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Karine DUTHEIL', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Keith SLATER', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Kevin PIQUET', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Kinga LUGOSI', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Laura THIBAULT', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Laurent BOUVET', groupName: 'Circuit Crazies'),
    Actor(
        day: "Jeudi", name: 'Laurent CHALUMEAU', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Laurent LECHELLE', groupName: 'Code Crusaders'),
    Actor(
        day: "Jeudi", name: 'Laurent MARQUES', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Laurent PIRARD', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Laurent SEGUIN', groupName: 'Techno Tribe'),
    Actor(
        day: "Jeudi",
        name: 'Léopold HAUTEMANIERE',
        groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Linda CHIKH', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Loren CHORLEY', groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi", name: 'Ludivine NADEAU', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Ludovic DUMINY', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Ludovic VALENTIN', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi", name: 'Magali TAUPIER', groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi", name: 'Manon FOURNIER', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Marc LE DEAUT', groupName: 'Future Founders'),
    Actor(
        day: "Jeudi",
        name: 'Margot AMOURETTE',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Marie CHESNEAU', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Marie-Christine TROZYN',
        groupName: 'The Tech Gurus'),
    Actor(
        day: "Jeudi",
        name: 'Marie-Claire CHANTRELLE',
        groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Marie-Laure BURY', groupName: 'Future Founders'),
    Actor(
        day: "Jeudi", name: 'Marine BERTRAND', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Martin CUYPERS', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi", name: 'Martin JEULAND', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi", name: 'Mathieu GEFFROY', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Mathieu MACREZ', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi", name: 'Mathieu THESIN', groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Maxence NAIS', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi",
        name: 'Maxime Leroy',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Maxime SIDOIT', groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi", name: 'Melody HORWATH', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Mickael HUBERT', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Mohamed BRIT', groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi",
        name: 'Murielle MATHON-BRAYS',
        groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi",
        name: 'Nathalie BELLOIR',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Nathalie PHILIPPON', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi",
        name: 'Nicolas BOUTOUBA',
        groupName: 'NextGen Innovators'),
    Actor(
        day: "Jeudi", name: 'Nicolas BRACAVAL', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Nicolas CHARLES', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Nicolas DUDOUIT', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Nicolas HENOCQ', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi",
        name: 'Nicolas POLYCHRONOPOULOS',
        groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Nicolas THOMAS', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Nicolas VANINE', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Olivier ANGIN', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Olivier CABON', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Olivier COURSIERE', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi",
        name: 'Olivier HOFFMANN',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Olivier MARCY', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'OLIVIER RASSI', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Pascal BANQUETEL', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Pascal CHARPENTIER', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Paskal TREUT', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Patrice PAYET', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi", name: 'Perrine LAMBERT', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Philippe ROUX', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Pierrick TANGUY', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Quentin GIBIAT', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Quentin HENIN', groupName: 'The Tech Savants'),
    Actor(
        day: "Jeudi", name: 'Quentin PEUCHMAUR', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Rémi BLAVEC', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Romain LANNEL', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Romain VALLET', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Sabrina CHARTON', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Samuel BECOURT', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Samuel MAILLARD', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi", name: 'Sarah LECOEUCHE', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Sébastien COURTOIS', groupName: 'Byte Brigade'),
    Actor(
        day: "Jeudi",
        name: 'Sébastien MARESSE',
        groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Sébastien RENOULT', groupName: 'The Tech Gurus'),
    Actor(
        day: "Jeudi",
        name: 'Séverine DEMONTREUILLE',
        groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Sophie DUMONTIER',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Sophie MATESIC',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Stéphan PONCE', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi", name: 'Stéphane CARDON', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi", name: 'Stéphane DEBRUYNE', groupName: 'The Tech Savants'),
    Actor(
        day: "Jeudi", name: 'Stéphane HEURTAUX', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Stéphanie NICOLET', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Sylvain BETTIOUI', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Sylvain NOTRET', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Téo HOUPIN', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Thibaud BOUQUELY', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Thibault JOSSE', groupName: 'The Tech Gurus'),
    Actor(
        day: "Jeudi", name: 'Thibault MARIE', groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Thierry HARDION', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Thierry SAUVE', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Thomas BERTHET', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Thomas BLONDEEL', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Thomas CAVELIER', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Thomas COURTIN', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Thomas DERIVAUX', groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi", name: 'Thomas DERUCHE', groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Thomas NOIRET', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi",
        name: 'Timothée TCHICAYA',
        groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Tommaso NOBILE', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Valentin MARTIS', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Véronique MERCIER', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Vincent DEFAUX', groupName: 'Byte Brigade'),
    Actor(
        day: "Jeudi", name: 'Vincent HADOUX', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Vincent JUPILLE', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Vivien VANDERSCHOOTEN',
        groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Xavier DE LURION', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi", name: 'Yann NEVOUX', groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Yann PASCOET', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Yannick DUTHE', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Yannick GUIARD', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Yoahn GLOWACKI', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Yoan FEUGNET', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Yoann LESUEUR', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Yoann REMY', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi",
        name: 'Yohann DELHORBE',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Vendredi",
        name: 'Adrien BARGIBANT',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Alice CELIGNY',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Amélie SCHNEIDER',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Anthony HIVERT',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Anthony MORIAUX',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Antoine GALANDON',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Antoine NORTIER',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Arnaud DESMAZES',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi", name: 'Arnaud LEBON', groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Benoit GUILLAUMIN',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Benoit LOUZEAU',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(day: "Vendredi", name: 'Carl SANZ', groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Cédric GERARD',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(day: "Vendredi", name: 'Céline REMY', groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Christine AMBROISE',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Christophe BARRE',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Damien LEFRANC',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi", name: 'Didier SICRE', groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Fabien FINANCE',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi", name: 'Florian FRAT', groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi", name: 'Franck LEROY', groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Frédéric COPPIN',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Frédéric POUYEZ',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Gabriel SIMON',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Gaël SURTET',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Gaétan ROUSSEAU',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Gildas LE BOURNAULT ',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Guillaume BOUCHER',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Guillaume SERVIEN',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Jean-Yves BAYARD',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi", name: 'Jérémy ROYER', groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Jonathan CRESSY',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Justine GAFFEZ',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Laurent LECHELLE',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Marc LE DEAUT',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Marine BERTRAND',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Mathieu GEFFROY',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Murielle MATHON-BRAYS',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Nicolas BRACAVAL',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Nicolas HENOCQ',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Olivier HOFFMANN',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Pascal BANQUETEL',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Philippe ROUX',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Samuel BECOURT',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Sarah LECOEUCHE',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Sébastien MARESSE',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Stéphane CARDON',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Stéphane DEBRUYNE',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Stéphanie NICOLET',
        groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Sylvain BETTIOUI',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi",
        name: 'Thibaud BOUQUELY',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Thomas BERTHET',
        groupName: 'Les insurgés de l\'innovation'),
    Actor(
        day: "Vendredi",
        name: 'Thomas BLONDEEL',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi", name: 'Thomas NOIRET', groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Xavier DE LURION',
        groupName: 'Les super-hackers'),
    Actor(
        day: "Vendredi",
        name: 'Yoahn GLOWACKI',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi", name: 'Yoann LESUEUR', groupName: 'Les super-hackers'),
    Actor(day: "Vendredi", name: 'Yoann REMY', groupName: 'Les ninjas du code'),
    Actor(
        day: "Vendredi",
        name: 'Yohann DELHORBE',
        groupName: 'Les rêveurs numériques'),
    Actor(
        day: "Vendredi", name: 'Jean-Marc FERNANDEZ', groupName: 'Animateurs'),
    Actor(day: "Vendredi", name: 'Laurent PIRARD', groupName: 'Animateurs'),
    Actor(
        day: "Vendredi",
        name: 'Nicolas POLYCHRONOPOULOS',
        groupName: 'Animateurs'),
    Actor(day: "Vendredi", name: 'Thierry HARDION', groupName: 'Animateurs'),
    Actor(day: "Vendredi", name: 'David ROCHELET', groupName: 'Animateurs'),
  ];

  final Map<String, List<Actor>> mapOfActors = {
    'test 1': [],
    'test 2': [],
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          //const Text('Recherche de groupe ou de personne'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SearchableList<Actor>(
                style: const TextStyle(fontSize: 25),
                onPaginate: () async {
                  await Future.delayed(const Duration(milliseconds: 1000));
                  setState(() {
                    actors.addAll([
                      Actor(
                          day: "Jeudi",
                          name: 'Didier Sicre',
                          groupName: 'Rostom'),
                      Actor(
                          day: "Jeudi",
                          name: 'David Rochelet',
                          groupName: 'Rostom'),
                      Actor(
                          day: "Vendredi",
                          name: 'David Rochelet',
                          groupName: 'Twati'),
                    ]);
                  });
                },
                builder: (Actor actor) => ActorItem(actor: actor),
                loadingWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Construction des listes de participants...')
                  ],
                ),
                errorWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Erreur de chargement')
                  ],
                ),
                asyncListCallback: () async {
                  await Future.delayed(
                    const Duration(
                      milliseconds: 10000,
                    ),
                  );
                  return actors;
                },
                asyncListFilter: (q, list) {
                  return list
                      .where((element) =>
                          (element.name + element.day + element.groupName)
                              .toLowerCase()
                              .contains(q.toLowerCase()))
                      .toList();
                },
                emptyWidget: const EmptyView(),
                onRefresh: () async {},
                onItemSelected: (Actor item) {},
                inputDecoration: InputDecoration(
                  labelText: "Filtrer par groupe, personne ou journée",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                secondaryWidget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Center(
                        child: Icon(Icons.sort),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          /*Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: addActor,
              child: const Text('Ajouter un participant'),
            ),
          )*/
        ],
      ),
    );
  }

  void addActor() {
    actors.add(Actor(
      day: 'Thursday',
      groupName: 'Moi',
      name: 'MonGroupe',
    ));
    setState(() {});
  }

  Widget expansionSearchableList() {
    return SearchableList<Actor>.expansion(
      expansionListData: mapOfActors,
      expansionTitleBuilder: (p0) {
        return Container(
          color: Colors.grey[300],
          width: MediaQuery.of(context).size.width * 0.8,
          height: 30,
          child: Center(
            child: Text(p0.toString()),
          ),
        );
      },
      filterExpansionData: (p0) {
        final filteredMap = {
          for (final entry in mapOfActors.entries)
            entry.key: (mapOfActors[entry.key] ?? [])
                .where((element) =>
                    (element.name + element.day + element.groupName)
                        .toLowerCase()
                        .contains(p0.toLowerCase()))
                .toList()
        };
        return filteredMap;
      },
      style: const TextStyle(fontSize: 25),
      builder: (Actor actor) => ActorItem(actor: actor),
      emptyWidget: const EmptyView(),
      inputDecoration: InputDecoration(
        labelText: "Filtrer par participant, groupe ou journée",
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class ActorItem extends StatelessWidget {
  final Actor actor;

  const ActorItem({
    Key? key,
    required this.actor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nom: ${actor.name}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Groupe: ${actor.groupName}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jour: ${actor.day}',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text('Il n\'existe pas de participant correspondant à votre recherche'),
      ],
    );
  }
}

class Actor {
  String day;
  String name;
  String groupName;

  Actor({
    required this.day,
    required this.name,
    required this.groupName,
  });
}
