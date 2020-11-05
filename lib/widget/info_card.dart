import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  Function onPressed;

  InfoCard({
    @required this.title,
    @required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          title: Text(
            title,
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
                      subtitle,
                      style: TextStyle(
                        fontSize: 18.0,
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
    );
  }
}