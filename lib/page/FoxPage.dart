import 'package:cute_animals/components/MyCard.dart';
import 'package:cute_animals/components/MyDrawer.dart';
import 'package:cute_animals/components/MyIcon.dart';
import 'package:cute_animals/model/Fox.dart';
import 'package:cute_animals/service/FoxApi.dart';
import 'package:flutter/material.dart';

class FoxPage extends StatefulWidget {
  @override
  _FoxPageState createState() => _FoxPageState();
}

class _FoxPageState extends State<FoxPage> {

  Future<Fox> futureFox;

  @override
  void initState() {
    newCat();
    super.initState();
  }

  newCat() {
    setState(() {
      if (FoxApi().getFox() != null) {
        futureFox = FoxApi().getFox();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Cute Fox'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
          child: FutureBuilder<Fox>(
        future: futureFox,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyCard(url: snapshot.data.image);
          } else {
            return MyIcon();
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newCat();
        },
        child: Icon(Icons.cached),
        tooltip: "New Fox",
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}