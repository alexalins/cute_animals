import 'package:cute_animals/page/CatPage.dart';
import 'package:cute_animals/page/DogPage.dart';
import 'package:cute_animals/page/FoxPage.dart';
import 'package:cute_animals/page/GoatPage.dart';
import 'package:cute_animals/page/ShibePage.dart';
import 'package:cute_animals/page/SplashPage.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashPage());
      case '/dog':
        return MaterialPageRoute(builder: (_) => DogPage());
      case '/cat':
        return MaterialPageRoute(builder: (_) => CatPage());
      case '/fox':
        return MaterialPageRoute(builder: (_) => FoxPage());
      case '/shibe':
        return MaterialPageRoute(builder: (_) => ShibePage());
      default:
        errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: new Center(
          child: Text('Tela não encontrada!'),
        ),
      );
    });
  }
}
