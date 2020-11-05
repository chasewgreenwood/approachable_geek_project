import 'package:flutter/material.dart';

class PhotoInputPage extends StatefulWidget {
  @override
  _PhotoInputPageState createState() => _PhotoInputPageState();
}

class _PhotoInputPageState extends State<PhotoInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text(
                        "Upload a photo of yourself:",
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
