import 'package:approachable_geek_project/models/user_profile.dart';
import 'package:approachable_geek_project/pages/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:approachable_geek_project/widgets/text_input_field.dart';

class NameInputPage extends StatefulWidget {
  @override
  _NameInputPageState createState() => _NameInputPageState();
}

class _NameInputPageState extends State<NameInputPage> {

  UserProfile userProfile;
  _NameInputPageState({this.userProfile});

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return Scaffold(
      body: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Text(
                  "What's your name?",
                   style: TextStyle(
                     fontSize: 24.0,
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                   )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: TextInputField(
                    hintText: 'First Name',
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Enter your first name';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      userProfile.firstName = value;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: TextInputField(
                    hintText: 'Last Name',
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Enter your last name';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      userProfile.lastName = value;
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Update',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]
      ),
        )
    );
  }
}
