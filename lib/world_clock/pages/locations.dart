import 'package:flutter/material.dart';
import 'package:app/world_clock/services/world_time.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  List<WorldTime> locations = [
    WorldTime(uri: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(uri: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(uri: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(uri: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(uri: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(uri: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(uri: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(uri: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime time = locations[index];
    await time.initTime();
    Navigator.pop(context, time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
