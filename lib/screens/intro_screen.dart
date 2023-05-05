import 'package:flutter/material.dart';
import 'package:seminaire/generated/assets.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Séminaire production 2023'),
            backgroundColor: Colors.green),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Assets.picsHomebg),
            fit: BoxFit.cover,
          )),
          /*child: SafeArea(
              child: AboutListTile(
                icon: const Icon(Icons.info),
                applicationIcon: const FlutterLogo(),
                applicationName: 'Appli Compagnon Séminaire',
                applicationVersion: 'Mai 2023',
                applicationLegalese: '\u{a9} 2023 Isagri Group',
                aboutBoxChildren: aboutBoxChildren,
              ),
            ),*/
          child: Center(
              child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white70,
            ),
            child: Text(
                'Bienvenue !!\n\nCette application vous guidera tout au long du séminaire\n\nPour accéder aux rubriques, utilisez le menu de gauche\n la barre inférieure vous donne accès aux informations principales',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  shadows: [
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      color: Colors.grey,
                    )
                  ],
                )),
          )),
        ));
  }
}
