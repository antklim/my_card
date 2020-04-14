import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Avatar(
                radius: 100,
              ),
              WhoAmI(),
              Delimiter(),
              MyContacts(),
            ],
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  Avatar({this.radius = 50.0});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('images/avatar.png'),
    );
  }
}

class WhoAmI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Anton Klimenko'),
          Text('Software Engineer'),
        ],
      ),
    );
  }
}

class Delimiter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('-'));
  }
}

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Phone Number'),
          Text('Email'),
        ],
      ),
    );
  }
}
