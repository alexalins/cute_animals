import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({@required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: new Container(
      child: new Image(
        image: NetworkImage(url),
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes
                  : null,
            ),
          );
        },
        height: 400,
        width: 400,
      ),
    ));
  }
}
