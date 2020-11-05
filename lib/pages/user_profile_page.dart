import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:approachable_geek_project/widget/info_card.dart';
import 'package:approachable_geek_project/pages/photo_input_page.dart';
import 'package:approachable_geek_project/pages/name_input_page.dart';
import 'package:approachable_geek_project/pages/phone_input_page.dart';
import 'package:approachable_geek_project/pages/email_input_page.dart';
import 'package:approachable_geek_project/pages/bio_input_page.dart';

const name = 'John Doe';
const phone = '(801)-123-456';
const email = 'johndoe@email.com';
const bio = 'Lorem ipsum dolor sit amet, quo facete ponderum cu, vix et nihil delenit accumsan, iisque iracundia reformidans te qui.';

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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Name: ' + name);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return PhotoInputPage();
                        }));
                      },
                    child: CircleAvatar(
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
                  ),
                  InfoCard(
                      title: 'Name',
                      subtitle: name,
                      onPressed: () {
                        print('Name: ' + name);
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return NameInputPage();
                        }));
                        },
                  ),
                  InfoCard(
                    title: 'Phone',
                    subtitle: phone,
                    onPressed: () {
                      print('Phone: ' + phone);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return PhoneInputPage();
                      }));
                      },
                  ),
                  InfoCard(
                    title: 'Email',
                    subtitle: email,
                    onPressed: () {
                      print('Email: ' + email);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return EmailInputPage();
                      }));
                      },
                  ),
                  InfoCard(
                    title: 'Tell us about yourself',
                    subtitle: bio,
                    onPressed: () {
                      print('Bio: ' + bio);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return BioInputPage();
                      }));
                      },
                  ),
                ]
            )
        )
    );
  }
}
