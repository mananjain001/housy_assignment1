import 'package:flutter/material.dart';
import 'package:housy_assignment1/util/Constants.dart';

class CustomListTileWithSubtitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subtitle;
  final Color color;

  CustomListTileWithSubtitle(
      {@required this.title,
      @required this.icon,
      @required this.subtitle,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: kBoldTextStyle.copyWith(fontSize: 20),
      ),
      leading: SizedBox(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          elevation: 0,
          child: Icon(icon),
          backgroundColor: color,
          onPressed: () {},
        ),
      ),
      subtitle: Text(
        subtitle,
        style: kGreyTextStyle.copyWith(fontSize: 16),
      ),
    );
  }
}
