import 'package:cute_animals/page/SplashPage.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(
            builder: (_) => SplashPage()
        );
      default : errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            body: new Center(
              child: Text('Tela não encontrada!'),
            ),
          );
        }
    );
  }
}