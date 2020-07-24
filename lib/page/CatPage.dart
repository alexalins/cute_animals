import 'package:cute_animals/components/MyCard.dart';
import 'package:cute_animals/components/MyDrawer.dart';
import 'package:cute_animals/components/MyIcon.dart';
import 'package:cute_animals/model/Cat.dart';
import 'package:cute_animals/service/CatApi.dart';
import 'package:flutter/material.dart';

class CatPage extends StatefulWidget {
  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  Future<Cat> futureCat;

  @override
  void initState() {
    newCat();
    super.initState();
  }

  newCat() {
    setState(() {
      if (CatApi().getCat() != null) {
        futureCat = CatApi().getCat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cute Cat'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
          child: FutureBuilder<Cat>(
        future: futureCat,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyCard(url: snapshot.data.url);
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
        tooltip: "New Cat",
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
