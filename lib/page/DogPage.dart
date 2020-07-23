import 'package:cute_animals/components/MyCard.dart';
import 'package:cute_animals/components/MyDrawer.dart';
import 'package:cute_animals/components/MyIcon.dart';
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
            return MyCard(url: snapshot.data.message);
          } else {
            return MyIcon();
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newDog();
        },
        child: Icon(Icons.cached),
        tooltip: "New Dog",
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
