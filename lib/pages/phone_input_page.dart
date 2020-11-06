import 'package:flutter/material.dart';
import 'package:approachable_geek_project/models/user_profile.dart';
import 'package:approachable_geek_project/widgets/text_input_field.dart';

class PhoneInputPage extends StatefulWidget {
  @override
  _PhoneInputPageState createState() => _PhoneInputPageState();
}

class _PhoneInputPageState extends State<PhoneInputPage> {
  UserProfile userProfile;
  _PhoneInputPageState({this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text(
                        "What's your phone number?",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                  TextInputField(
                    hintText: 'Phone Number',
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Enter your phone number.';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      userProfile.phone = value;
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
