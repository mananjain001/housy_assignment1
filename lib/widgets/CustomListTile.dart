import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String title;
  IconData icon;

  CustomListTile({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
