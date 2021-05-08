import 'package:flutter/material.dart';

class NinjaId extends StatefulWidget {
  @override
  _NinjaIdState createState() => _NinjaIdState();
}

class _NinjaIdState extends State<NinjaId> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ninja ID"),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/chun.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[900],
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Chun-Li",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "$level",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "chun.li@theninja.com.bd",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
      ),
    );
  }
}
