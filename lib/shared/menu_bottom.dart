import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.green.shade400,
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
          icon: Icon(Icons.group, color: Colors.black),
          label: 'Groupes',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: Colors.black),
            label: 'Programme'),
        BottomNavigationBarItem(
            icon: Icon(Icons.phone, color: Colors.black), label: 'Contacts'),
      ],
    );
  }
}
