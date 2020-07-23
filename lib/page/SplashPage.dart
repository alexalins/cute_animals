import 'package:cute_animals/components/MyIcon.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacementNamed(context, '/dog');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(64.0),
        child: Center(
          child: MyIcon(),
        ),
      ),
    );
  }
}
