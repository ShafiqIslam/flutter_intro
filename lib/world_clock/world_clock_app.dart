import 'package:flutter/material.dart';
import 'package:app/world_clock/pages/home.dart';
import 'package:app/world_clock/pages/loading.dart';
import 'package:app/world_clock/pages/locations.dart';

class WorldClockApp extends StatefulWidget {
  @override
  _WorldClockAppState createState() => _WorldClockAppState();
}

class _WorldClockAppState extends State<WorldClockApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/locations': (context) => Locations(),
      },
    );
  }
}
