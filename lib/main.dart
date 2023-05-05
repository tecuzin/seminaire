import 'package:flutter/material.dart';
import 'package:seminaire/screens/agenda_screen.dart';
import 'package:seminaire/screens/contacts_screen.dart';
import 'package:seminaire/screens/howtocome_screen.dart';
import 'package:seminaire/screens/speakers_screen.dart';
import 'package:seminaire/screens/groups_screen.dart';
import 'screens/intro_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/agenda': (context) => AgendaScreen(),
        '/speakers': (context) => SpeakersScreen(),
        '/contacts': (context) => ContactsScreen(),
        '/howtocome': (context) => HowtocomeScreen(),
        '/groups': (context) => GroupsScreen(),
      },
      initialRoute: '/',
    );
    //home: IntroScreen());
  }
}
