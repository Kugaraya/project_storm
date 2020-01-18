import 'package:flutter/services.dart';
import 'package:project_storm/ui/router.dart';
import 'package:project_storm/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  // Initializing Locator used services and models
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project_storm',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.blue, accentColor: Colors.blueAccent),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
