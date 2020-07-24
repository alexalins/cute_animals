import 'package:cute_animals/components/MyIcon.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: MyIcon(),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Dogs'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/dog');
            },
          ),
          ListTile(
            title: Text('Cats'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/cat');
            },
          ),
          ListTile(
            title: Text('Foxes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/fox');
            },
          ),
        ],
      ),
    );
  }
}
