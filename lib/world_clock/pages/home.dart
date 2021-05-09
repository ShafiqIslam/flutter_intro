import 'package:app/world_clock/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  WorldTime? time;

  @override
  Widget build(BuildContext context) {
    WorldTime paramTime = ModalRoute.of(context)?.settings.arguments as WorldTime;
    WorldTime t = (time == null) ? paramTime : (time as WorldTime);
    String bgImage = "assets/" + (t.isDayTime() ? "day.png" : "night.png");
    Color bgColor = t.isDayTime() ? Colors.blue : Colors.indigo.shade800;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic newTime = await Navigator.pushNamed(context, '/locations');
                    setState(() {
                      time = newTime;
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[200],
                  ),
                  label: Text("Choose Location"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.grey.shade200;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    t.location,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    DateFormat.jm().format(t.time!),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 66.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
