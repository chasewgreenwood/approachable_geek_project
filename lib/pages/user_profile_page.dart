import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/da_boys.jpg'),
            )
          ]
        )
      )
    );
  }
}
