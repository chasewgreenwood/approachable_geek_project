import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:approachable_geek_project/models/user_profile.dart';
import 'package:approachable_geek_project/pages/photo_input_page.dart';
import 'package:approachable_geek_project/pages/name_input_page.dart';
import 'package:approachable_geek_project/pages/phone_input_page.dart';
import 'package:approachable_geek_project/pages/email_input_page.dart';
import 'package:approachable_geek_project/pages/bio_input_page.dart';
import 'package:approachable_geek_project/widgets/info_card.dart';
import 'package:approachable_geek_project/widgets/text_input_field.dart';

UserProfile userProfile = new UserProfile(
  'John',
  'Doe',
  '(801) 123-4567',
  'johndoe@email.com',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
);

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
                      print('Name: ' + userProfile.firstName + ' ' + userProfile.lastName);
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
                      subtitle: userProfile.firstName + ' ' + userProfile.lastName,
                      onPressed: () {
                        print('Name: ' + userProfile.firstName + ' ' + userProfile.lastName);
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return NameInputPage();
                        }));
                        },
                  ),
                  InfoCard(
                    title: 'Phone',
                    subtitle: userProfile.phone,
                    onPressed: () {
                      print('Phone: ' + userProfile.phone);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return PhoneInputPage();
                      }));
                      },
                  ),
                  InfoCard(
                    title: 'Email',
                    subtitle: userProfile.email,
                    onPressed: () {
                      print('Email: ' + userProfile.email);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return EmailInputPage();
                      }));
                      },
                  ),
                  InfoCard(
                    title: 'Tell us about yourself',
                    subtitle: userProfile.bio,
                    onPressed: () {
                      print('Bio: ' + userProfile.bio);
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
