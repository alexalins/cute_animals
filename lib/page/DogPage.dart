import 'package:flutter/material.dart';

class DogPage extends StatefulWidget {
  @override
  _DogPageState createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  newDog() {
    print("NEW DOG!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: new Image(image: new NetworkImage("https://images.dog.ceo/breeds/pyrenees/n02111500_5618.jpg")),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newDog();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
