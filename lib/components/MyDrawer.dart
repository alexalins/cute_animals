import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image(
                image: new NetworkImage(
                    "https://3.bp.blogspot.com/-YZR_7TuOKH4/Wdj4bIwXV4I/AAAAAAALGwA/igEBDeZO3b40DTM7u0nXLck0PlSaW94eQCLcBGAs/s1600/AW567112_00.gif")),
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
              Navigator.pushReplacementNamed(context, '/dog');
            },
          ),
          ListTile(
            title: Text('Fox'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/dog');
            },
          ),
        ],
      ),
    );
  }
}
