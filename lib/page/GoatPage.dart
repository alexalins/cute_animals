import 'package:cute_animals/components/MyCard.dart';
import 'package:cute_animals/components/MyDrawer.dart';
import 'package:cute_animals/components/MyIcon.dart';
import 'package:cute_animals/service/GoatApi.dart';
import 'package:flutter/material.dart';


class GoatPage extends StatefulWidget {
  @override
  _GoatPageState createState() => _GoatPageState();
}

const baseUrl = "https://placegoat.com/";
const width = "400";
const height = "400";

class _GoatPageState extends State<GoatPage> {

  Future<String> futureGoat;
  String url = baseUrl + width + "/" + width;
  String urlAux;

  @override
  void initState() {
    urlAux = url;
    super.initState();
  }

  newGoat() {
    setState(() {
      urlAux = "";
      urlAux = url;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Cute Goat'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
          child: MyCard(url: urlAux)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newGoat();
        },
        child: Icon(Icons.cached),
        tooltip: "New Goat",
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}