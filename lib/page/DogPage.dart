import 'dart:convert';

import 'package:cute_animals/components/MyDrawer.dart';
import 'package:cute_animals/model/Dog.dart';
import 'package:cute_animals/service/DogApi.dart';
import 'package:flutter/material.dart';

class DogPage extends StatefulWidget {
  @override
  _DogPageState createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  Future<Dog> futureDog;

  @override
  void initState() {
    newDog();
    super.initState();
  }

  newDog() {
    setState(() {
      if (DogApi().getDog() != null) {
        futureDog = DogApi().getDog();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cute Dog'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
          child: FutureBuilder<Dog>(
        future: futureDog,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return new Image(image: new NetworkImage(snapshot.data.message));
          } else {
            return Image(image: new NetworkImage("https://3.bp.blogspot.com/-YZR_7TuOKH4/Wdj4bIwXV4I/AAAAAAALGwA/igEBDeZO3b40DTM7u0nXLck0PlSaW94eQCLcBGAs/s1600/AW567112_00.gif"));
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newDog();
        },
        child: Icon(Icons.cached),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
