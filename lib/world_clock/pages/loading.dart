import 'package:flutter/material.dart';
import 'package:app/world_clock/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with TickerProviderStateMixin {
  void getTime() async {
    WorldTime londonTime = WorldTime(
      location: "London",
      flag: "london.jpg",
      uri: "Europe/London",
    );
    await londonTime.initTime();
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: londonTime,
    );
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 60.0,
          controller: AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 600),
          ),
        ),
      ),
    );
  }
}
