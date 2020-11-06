import 'package:flutter/material.dart';
import 'package:approachable_geek_project/models/user_profile.dart';
import 'package:approachable_geek_project/widgets/text_input_field.dart';

class BioInputPage extends StatefulWidget {
  @override
  _BioInputPageState createState() => _BioInputPageState();
}

class _BioInputPageState extends State<BioInputPage> {
  UserProfile userProfile;
  _BioInputPageState({this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text(
                        "What type of passenger are you?",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                  TextFormField(
                    maxLines: 15,
                    minLines: 10,
                    decoration: InputDecoration(
                      hintText: 'Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc.',
                      contentPadding: EdgeInsets.all(16.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    onSaved: (String value) {
                      userProfile.bio = value;
                    },
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
            )
        )
    );
  }
}
