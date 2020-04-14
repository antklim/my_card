import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Styles.primaryColor,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Avatar(),
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

abstract class Styles {
  static const Color primaryColorDark = Color(0xFF512DA8);
  static const Color primaryColor = Color(0xFF673AB7);
  static const Color primaryColorLigth = Color(0xFFD1C4E9);
  static const Color primaryColorText = Color(0xFFFFFFFF);
  static const Color accentColor = Color(0xFF009688);
  static const Color primaryTextColor = Color(0xFF212121);
  static const Color secondaryTextColor = Color(0xFF757575);
  static const Color dividerColor = Color(0xFFBDBDBD);
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
          Text(
            'Anton Klimenko',
            style: TextStyle(
              color: Styles.primaryColorText,
              fontFamily: 'RobotoMono',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'SOFTWARE ENGINEER',
            style: TextStyle(
              // color: Colors.deepPurple.shade100,
              color: Styles.primaryColorLigth,
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          ),
        ],
      ),
    );
  }
}

class Delimiter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('-'),
    );
  }
}

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Styles.primaryColorText,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Styles.primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Styles.primaryColorDark,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Styles.primaryColorText,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Styles.primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Styles.primaryColorDark,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
