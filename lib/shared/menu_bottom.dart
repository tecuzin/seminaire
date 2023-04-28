import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.green,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/groups');
            break;
          case 1:
            Navigator.pushNamed(context, '/agenda');
            break;
          case 2:
            Navigator.pushNamed(context, '/contacts');
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Groupes',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'Programme'),
        BottomNavigationBarItem(
            icon: Icon(Icons.phone), label: 'Contacts'),

      ],
    );
  }
}