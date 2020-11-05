import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(16.0),
                  ),*/
                  CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.blue.shade700,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage('images/da_boys.jpg'),
                        child: Container(
                          height: 140,
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.create,
                              color: Colors.blue.shade700,
                              size: 25.0,
                            ),
                          ),
                        ),
                      )
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: Text(
                        'John Doe',
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: Colors.grey.shade400,
                        size: 36.0,
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Text(
                        'Phone',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: Text(
                        '(801) 123-4567',
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: Colors.grey.shade400,
                        size: 36.0,
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'johndoe@email.com',
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: Colors.grey.shade400,
                        size: 36.0,
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      title: Text(
                        'Tell us about yourself',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Container(
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, quo facete ponderum cu, vix et nihil delenit accumsan, iisque iracundia reformidans te qui. Cu nam ponderum vulputate. Alia omittantur ne nam. Solum inermis ad pro, alii placerat vix et. Dolore everti eam te, no sed admodum eligendi. Feugait voluptatum ad nec, eu mea ceteros nominati senserit, id mei solet malorum periculis.',
                                  style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: Colors.grey.shade400,
                        size: 36.0,
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}
