import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacementNamed(context, '/dog');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(64.0),
        child: Center(
          child: new Image(image: new NetworkImage("https://3.bp.blogspot.com/-YZR_7TuOKH4/Wdj4bIwXV4I/AAAAAAALGwA/igEBDeZO3b40DTM7u0nXLck0PlSaW94eQCLcBGAs/s1600/AW567112_00.gif")),
        ),
      ),
    );
  }
}
