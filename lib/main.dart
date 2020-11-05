import 'package:flutter/material.dart';
import 'package:approachable_geek_project/pages/user_profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile Page',
      theme: ThemeData(),
      home: UserProfilePage(),
    );
  }
}
