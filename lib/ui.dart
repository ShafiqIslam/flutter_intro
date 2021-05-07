import 'package:flutter/material.dart';

class UiDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("UI Demo"),
        ),
        body: Container(
          color: Colors.blueGrey[600],
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Column(
            children: [
              getText(),
              getElevatedButton(),
              getTextButton(),
              getImage(),
              getIcon(),
              getIconButton(),
              getRowColumns(),
              getFlex()
            ],
          ),
        ),
      ),
    );
  }

  Text getText() {
    return Text(
      "Some Text",
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.green[600],
        letterSpacing: 2.0,
        fontFamily: 'Calligraffitti',
      ),
    );
  }

  ElevatedButton getElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        print("ElevatedButton clicked");
      },
      child: Text("ElevatedButton"),
    );
  }

  TextButton getTextButton() {
    return TextButton(
      onPressed: () => print("TextButton clicked"),
      child: Text("TextButton"),
    );
  }

  Image getImage() {
    return Image.asset('assets/a.jpg');
  }

  Icon getIcon() {
    return Icon(
      Icons.local_airport,
      size: 50,
      color: Colors.red,
    );
  }

  ElevatedButton getIconButton() {
    return ElevatedButton.icon(
      onPressed: () {
        print("Mail button clicked");
      },
      icon: Icon(Icons.mail),
      label: Text(
        "Mail Button",
        style: TextStyle(
          color: Colors.amber,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return states.contains(MaterialState.pressed)
                ? Colors.green
                : Colors.black;
          },
        ),
      ),
    );
  }

  Row getRowColumns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.cyan,
              child: Text("One"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Text("One"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text("One"),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.cyan,
              child: Text("two"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Text("two"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text("two"),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.cyan,
              child: Text("three"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Text("three"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text("three"),
            ),
          ],
        )
      ],
    );
  }

  Row getFlex() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            child: Text("1"),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            color: Colors.cyan,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Text("2"),
            color: Colors.pinkAccent,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Text("3"),
            color: Colors.blueAccent,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
      ],
    );
  }
}
