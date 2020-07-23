import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({@required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.blueGrey,
        child: new Image(image: NetworkImage(url)),
      )
    );
  }
}
