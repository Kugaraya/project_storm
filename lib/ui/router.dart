import 'package:flutter/material.dart';
import 'package:project_storm/ui/views/auth.dart';
import 'package:project_storm/ui/views/home.dart';
import 'package:project_storm/ui/views/splash.dart';

class Router {
  static Route<dynamic> generateRoute(settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView());
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthView());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
