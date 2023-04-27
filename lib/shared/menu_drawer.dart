import 'package:flutter/material.dart';
import 'package:seminaire/generated/assets.dart';
import 'package:seminaire/screens/agenda_screen.dart';
import 'package:seminaire/screens/contacts_screen.dart';
import 'package:seminaire/screens/groups_screen.dart';
import 'package:seminaire/screens/speakers_screen.dart';
import '../screens/howtocome_screen.dart';
import '../screens/intro_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white54,
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'A propos',
      'Agenda',
      'Groupes et participants',
      'Speakers',
      'Contacts',
      'Comment venir ?',
      '',
      '***** Version 2023.1 *****'
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.white54,
          image: DecorationImage(
            image: AssetImage(Assets.picslogoIsagriComplet),
          ),
        ),
        child: Text('', style: TextStyle(color: Colors.white, fontSize: 28))));
    menuTitles.forEach((element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(
          element,
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          switch (element) {
            case 'A propos':
              screen = IntroScreen();
              break;
            case 'Agenda':
              screen = AgendaScreen();
              break;
            case 'Groupes et participants':
              screen = GroupsScreen();
              break;
            case 'Speakers':
              screen = SpeakersScreen();
              break;
            case 'Contacts':
              screen = ContactsScreen();
              break;
            case 'Comment venir ?':
              screen = HowtocomeScreen();
              break;
          }
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
