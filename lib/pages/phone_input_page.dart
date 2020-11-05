import 'package:flutter/material.dart';

class PhoneInputPage extends StatefulWidget {
  @override
  _PhoneInputPageState createState() => _PhoneInputPageState();
}

class _PhoneInputPageState extends State<PhoneInputPage> {
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
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Go Back'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ]
            )
        )
    );
  }
}
