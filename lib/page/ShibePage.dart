import 'package:cute_animals/components/MyCard.dart';
import 'package:cute_animals/components/MyDrawer.dart';
import 'package:cute_animals/components/MyIcon.dart';
import 'package:cute_animals/service/ShibeApi.dart';
import 'package:flutter/material.dart';

class ShibePage extends StatefulWidget {
  @override
  _ShibePageState createState() => _ShibePageState();
}

class _ShibePageState extends State<ShibePage> {
  Future<String> futureShibe;

  @override
  void initState() {
    newCat();
    super.initState();
  }

  newCat() {
    setState(() {
      if (ShibeApi().getShibe() != null) {
        futureShibe = ShibeApi().getShibe();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cute Shibe'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
          child: FutureBuilder<String>(
        future: futureShibe,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyCard(url: snapshot.data);
          } else {
            print("nda");
            return MyIcon();
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newCat();
        },
        child: Icon(Icons.cached),
        tooltip: "New Shibe",
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
