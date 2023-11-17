import 'package:flutter/material.dart';
import 'package:seminaire/generated/assets.dart';
import 'package:seminaire/shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_countdown_timer/index.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  int calculateTimeDifference(DateTime targetDateTime) {
    return targetDateTime.millisecondsSinceEpoch -
        DateTime.now().millisecondsSinceEpoch;
  }

  @override
  Widget build(BuildContext context) {
    DateTime targetDateTime = DateTime(2024, 12, 31, 18, 0, 0);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white70,
                ),
                child: CountdownTimer(
                  endTime:
                      DateTime(2023, 12, 03, 0, 30, 0).millisecondsSinceEpoch,
                  textStyle: TextStyle(fontSize: 80, color: Colors.teal),
                  onEnd: () {
                    print(calculateTimeDifference(targetDateTime).toString());
                  },
                  widgetBuilder: (_, CurrentRemainingTime? time) {
                    if (time == null) {
                      return Text('Game over');
                    }
                    return Text(
                      '${time.days} jours ${time.hours} heures ${time.min} minutes ${time.sec} secondes\n avant votre prochain évènement',
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.2,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
