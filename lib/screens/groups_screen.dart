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
    Actor(
        day: "Jeudi",
        name: 'Adrien BARGIBANT',
        groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Adrien Lazaro', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Adrien LEFRANCOIS', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi", name: 'Alexandre KUYUMCU', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Alexis TALMANT', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Alice BOULANGER', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Alice CELIGNY', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Alice ROUCOUS', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Alicia GRIOCHE', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Amandine BUREAU', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Amélie ALLIX', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Amélie SCHNEIDER', groupName: 'Digital Dragons'),
    Actor(
        day: "Jeudi", name: 'Angela Machado-Vieira', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Annie GAROT', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Anthony BOUTEILLER',
        groupName: 'Digital Mavericks'),
    Actor(
        day: "Jeudi", name: 'Anthony HIVERT', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi", name: 'Anthony MORIAUX', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Antoine BISCH', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Antoine DANO', groupName: 'The Tech Savants'),
    Actor(
        day: "Jeudi", name: 'Antoine GALANDON', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Antoine NORTIER', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Antoine PRUVOST', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Antoine Van Roey', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Arnaud BETTEMBOT', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Arnaud DESMAZES', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Arnaud DROUET', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Arnaud LEBON', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Arnaud MAGNIEZ', groupName: 'Future Founders'),
    Actor(
        day: "Jeudi", name: 'Audrey BEUVRIER', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Audrey Sensever', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi", name: 'Augustin DENDIEVEL', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Aurélie CORNEN', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Axel DJENADI', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Axel GODIN', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Bastien CLUS', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Benjamin POTIN', groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi",
        name: 'Benoit GUILLAUMIN',
        groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Benoit LOUZEAU', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Benoît ORTEGA', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi", name: 'Benoit PIONNIER', groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi",
        name: 'Bernard LE BOULICAUT',
        groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Bertrand DOLET', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Brayan DECAGNY', groupName: 'Digital Mavericks'),
    Actor(
        day: "Jeudi",
        name: 'Bruno TURQUET DE LA BOISSERIE',
        groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Carine BLASCO', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Carl SANZ', groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi", name: 'Carmelo SAMMARTINO', groupName: 'The Tech Gurus'),
    Actor(
        day: "Jeudi",
        name: 'Catherine AA',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Cécile HODENCQ', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Cécile LEROUZIC', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Cécile PINCENT', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Cédric GERARD', groupName: 'The Tech Savants'),
    Actor(
        day: "Jeudi", name: 'Cédric LE BOURLOUT', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Cédric TROUVÉ', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Céline ANGUELU', groupName: 'Code Crusaders'),
    Actor(
        day: "Jeudi", name: 'Céline PLAETE', groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi",
        name: 'Christelle MALAHIEUDE',
        groupName: 'Future Founders'),
    Actor(
        day: "Jeudi",
        name: 'Christelle PETIT',
        groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Christine AMBROISE', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Christophe BARRE',
        groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi",
        name: 'Christophe GRATADOUR',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Christopher Langlet', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Chrystèle GIUMMARRA', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Clément POIREL', groupName: 'The Tech Gurus'),
    Actor(
        day: "Jeudi",
        name: 'Corentin BANTEIGNIE',
        groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Cynthia RENAU', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Cyril GRANDCOIN', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Damien LEFRANC', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Damien LEGOULLON', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Damien MORTIER', groupName: 'Code Crusaders'),
    Actor(
        day: "Jeudi",
        name: 'Damien ZBORALA',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'David FROMONT', groupName: 'Byte Brigade'),
    Actor(
        day: "Jeudi", name: 'David HILPIPRE', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'David ROCHELET', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'David VALENTIN', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Delphine BLUNT', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Diana FAVRE', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Didier SICRE', groupName: 'Code Crusaders'),
    Actor(
        day: "Jeudi",
        name: 'Donatien BRESZCZYNSKI',
        groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi", name: 'Edouard MONCHY', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi",
        name: 'Edwige VALOUR-DUMOULIN',
        groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Elyes REGGAD', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi", name: 'Emeric VIGNERON', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi", name: 'Emilie WASCHEUL', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Emmanuel BOLLOTTE', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Etienne NICOLAS', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi", name: 'Evelyne BIANCHI', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi",
        name: 'Fabien FINANCE',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Fabrice GUIONNET', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi",
        name: 'Fabrice MATONDO MARANATHA',
        groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Florent RIMBERT', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Florian DEPATIN', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Florian FRAT', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Florian LOEUILLET', groupName: 'Techno Tribe'),
    Actor(
        day: "Jeudi",
        name: 'Florian RIGAL',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Florian TANAY', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Franck LEROY', groupName: 'Circuit Crazies'),
    Actor(
        day: "Jeudi",
        name: 'François-Xavier VREL',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Frédéric COPPIN', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi",
        name: 'Frédéric KERNALLEGUEN',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Frédéric POUYEZ', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Gabriel LEFEBVRE', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Gabriel SIMON', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Gaël SURTET', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Gaëlle PREVOT', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Geoffrey GESLIN', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Géraldine MACRON', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Gilda PARISOT', groupName: 'NextGen Innovators'),
    Actor(
        day: "Jeudi",
        name: 'Gildas LE BOURNAULT',
        groupName: 'Future Founders'),
    Actor(
        day: "Jeudi",
        name: 'Gregory DENYS',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi",
        name: 'Guillaume BERINGER',
        groupName: 'Digital Mavericks'),
    Actor(
        day: "Jeudi",
        name: 'Guillaume BOUCHER',
        groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi",
        name: 'Guillaume RIFFAUD',
        groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Guillaume ROUCOUS', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Guillaume SERVIEN', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Guy CLUET', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Gwenola LEVESQUE', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi", name: 'Hervé DREVILLON', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi", name: 'Isabelle COUVREUR', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Issa KONATE', groupName: 'Digital Mavericks'),
    Actor(
        day: "Jeudi",
        name: 'Jean DREVILLON',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Baptiste MERAND',
        groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Hugues CHEVALLIER',
        groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Marc FERNANDEZ',
        groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Philippe BABKA',
        groupName: 'Code Conquerors'),
    Actor(
        day: "Jeudi",
        name: 'Jean-Yves BAYARD',
        groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi", name: 'Jeremie NANTIER', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Jérémy FAVRE', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi",
        name: 'Jeremy GUIBERT',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Jérémy LEFRANC', groupName: 'Digital Dream Team'),
    Actor(day: "Jeudi", name: 'Jeremy MARCHERAS', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Jérémy ROYER', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Jérôme GAINCHE', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Jérôme Guillevic', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Jérôme LALOT', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Jimmy WIMS', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Johann FAYOLLE', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'John CLOUT', groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi",
        name: 'Jonathan CRESSY',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Jonathan DOMINGUEZ', groupName: 'Cyber Titans'),
    Actor(
        day: "Jeudi",
        name: 'Jonathan FOURMOND',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Jonathan GALLAIS ',
        groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Julie CHOPIN', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Julien BEGARD', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Julien CARTIER', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Julien HEMERY', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Julien HOUPIN', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Juliette LEROUX', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Justine GAFFEZ', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Karine DUTHEIL', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Keith SLATER', groupName: 'Digital Dragons'),
    Actor(
        day: "Jeudi", name: 'Kevin PIQUET', groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Kinga LUGOSI', groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Laura THIBAULT', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Laurent BOUVET', groupName: 'Tech Titans'),
    Actor(
        day: "Jeudi",
        name: 'Laurent CHALUMEAU',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Laurent LECHELLE', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Laurent PIRARD', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Laurent SEGUIN', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi", name: 'Léopold HAUTEMANIERE', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Linda CHIKH', groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi", name: 'Loren CHORLEY', groupName: 'The Digital Wizards'),
    Actor(
        day: "Jeudi", name: 'Loris Esposito', groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi", name: 'Ludivine NADEAU', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Ludovic DUMINY', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi",
        name: 'Ludovic VALENTIN',
        groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Magali TAUPIER', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi",
        name: 'Manon FOURNIER',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Marc LE DEAUT', groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi",
        name: 'Margot AMOURETTE',
        groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi", name: 'Marie CHESNEAU', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi",
        name: 'Marie-Christine TROZYN',
        groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi",
        name: 'Marie-Claire CHANTRELLE',
        groupName: 'Code Crusaders'),
    Actor(
        day: "Jeudi",
        name: 'Marie-Laure BURY',
        groupName: 'The Innovators League'),
    Actor(
        day: "Jeudi",
        name: 'Marine BERTRAND',
        groupName: 'The Tech Titans Assembly'),
    Actor(day: "Jeudi", name: 'Martin CUYPERS', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Martin JEULAND', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Mathieu GEFFROY', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Mathieu MACREZ', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Mathieu THESIN', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Maxence NAIS', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Maxime Leroy', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Maxime SIDOIT', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Melody HORWATH', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Mickael HUBERT', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'Mohamed BRIT', groupName: 'Byte Brigade'),
    Actor(
        day: "Jeudi",
        name: 'Murielle MATHON-BRAYS',
        groupName: 'NextGen Innovators'),
    Actor(
        day: "Jeudi", name: 'Nathalie BELLOIR', groupName: 'Silicon Squadron'),
    Actor(
        day: "Jeudi", name: 'Nathalie PHILIPPON', groupName: 'Code Crusaders'),
    Actor(
        day: "Jeudi",
        name: 'Nicolas BOUTOUBA',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Nicolas BRACAVAL', groupName: 'Byte Brigade'),
    Actor(day: "Jeudi", name: 'Nicolas CHARLES', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Nicolas DUDOUIT', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Nicolas HENOCQ', groupName: 'Digital Mavericks'),
    Actor(
        day: "Jeudi",
        name: 'Nicolas POLYCHRONOPOULOS',
        groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Nicolas THOMAS', groupName: 'Quantum Knights'),
    Actor(day: "Jeudi", name: 'Nicolas VANINE', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi", name: 'Oceane HERMEY', groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Olivier ANGIN', groupName: 'Quantum Collective'),
    Actor(day: "Jeudi", name: 'Olivier CABON', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi", name: 'Olivier COURSIERE', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi", name: 'Olivier HOFFMANN', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Olivier MARCY', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Olivier Pena', groupName: 'Digital Dragons'),
    Actor(day: "Jeudi", name: 'OLIVIER RASSI', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Pascal BANQUETEL', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi", name: 'Pascal CHARPENTIER', groupName: 'Code Conquerors'),
    Actor(day: "Jeudi", name: 'Paskal TREUT', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Patrice PAYET', groupName: 'Digital Dragons'),
    Actor(
        day: "Jeudi",
        name: 'Perrine LAMBERT',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Philippe ROUX', groupName: 'The Network Ninjas'),
    Actor(day: "Jeudi", name: 'Pierre Prandi', groupName: 'Cyber Sharks'),
    Actor(day: "Jeudi", name: 'Pierrick TANGUY', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Quentin GIBIAT', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Quentin HENIN', groupName: 'Cyber Sharks'),
    Actor(
        day: "Jeudi",
        name: 'Quentin PEUCHMAUR',
        groupName: 'The Digital Wizards'),
    Actor(day: "Jeudi", name: 'Rémi BLAVEC', groupName: 'Code Crusaders'),
    Actor(day: "Jeudi", name: 'Romain LANNEL', groupName: 'Data Demons'),
    Actor(day: "Jeudi", name: 'Romain VALLET', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Sabrina CHARTON', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Samuel BECOURT', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi", name: 'Samuel MAILLARD', groupName: 'The Network Ninjas'),
    Actor(
        day: "Jeudi",
        name: 'Sarah LECOEUCHE',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Sébastien COURTOIS', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Sébastien MARESSE', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi",
        name: 'Sébastien RENOULT',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Séverine DEMONTREUILLE', groupName: 'Data Demons'),
    Actor(
        day: "Jeudi", name: 'Sophie DUMONTIER', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Sophie MATESIC', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Stéphan PONCE', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Stéphane CARDON', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi", name: 'Stéphane DEBRUYNE', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi",
        name: 'Stéphane HEURTAUX',
        groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi", name: 'Stéphanie NICOLET', groupName: 'Code Commanders'),
    Actor(
        day: "Jeudi",
        name: 'Sylvain BETTIOUI',
        groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Sylvain NOTRET', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Téo HOUPIN', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Thibaud BOUQUELY', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Thibault JOSSE', groupName: 'Byte Brigade'),
    Actor(
        day: "Jeudi",
        name: 'Thibault MARIE',
        groupName: 'The Tech Titans Assembly'),
    Actor(
        day: "Jeudi", name: 'Thierry HARDION', groupName: 'Digital Dream Team'),
    Actor(
        day: "Jeudi",
        name: 'Thierry SAUVE',
        groupName: 'The Innovators League'),
    Actor(day: "Jeudi", name: 'Thomas BERTHET', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Thomas CAVELIER', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Thomas COURTIN', groupName: 'Techno Tribe'),
    Actor(day: "Jeudi", name: 'Thomas DERIVAUX', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Thomas DERUCHE', groupName: 'Code Commanders'),
    Actor(day: "Jeudi", name: 'Thomas NOIRET', groupName: 'The Tech Savants'),
    Actor(day: "Jeudi", name: 'Tommaso NOBILE', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Valentin MARTIS', groupName: 'Circuit Crazies'),
    Actor(day: "Jeudi", name: 'Véronique MERCIER', groupName: 'Cyber Titans'),
    Actor(day: "Jeudi", name: 'Victor Loffet', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Vincent DEFAUX', groupName: 'The Tech Gurus'),
    Actor(day: "Jeudi", name: 'Vincent Godin', groupName: 'Digital Mavericks'),
    Actor(day: "Jeudi", name: 'Vincent HADOUX', groupName: 'Silicon Squadron'),
    Actor(day: "Jeudi", name: 'Vincent JUPILLE', groupName: 'Digital Dynasty'),
    Actor(
        day: "Jeudi",
        name: 'Vivien VANDERSCHOOTEN',
        groupName: 'NextGen Innovators'),
    Actor(
        day: "Jeudi",
        name: 'Xavier DE LURION',
        groupName: 'Tech Titans United'),
    Actor(day: "Jeudi", name: 'Yann NEVOUX', groupName: 'Digital Dynasty'),
    Actor(day: "Jeudi", name: 'Yann PASCOET', groupName: 'Future Founders'),
    Actor(day: "Jeudi", name: 'Yannick DUTHE', groupName: 'Quantum Knights'),
    Actor(
        day: "Jeudi", name: 'Yannick GUIARD', groupName: 'Tech Titans United'),
    Actor(
        day: "Jeudi", name: 'Yoahn GLOWACKI', groupName: 'NextGen Innovators'),
    Actor(day: "Jeudi", name: 'Yoan FEUGNET', groupName: 'Tech Titans'),
    Actor(day: "Jeudi", name: 'Yoann LESUEUR', groupName: 'Quantum Collective'),
    Actor(
        day: "Jeudi",
        name: 'Yoann REMY',
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
        day: "Vendredi", name: 'Pascal PEREZ', groupName: 'Les super-hackers'),
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
