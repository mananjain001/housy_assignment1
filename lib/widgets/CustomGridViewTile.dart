import 'package:flutter/material.dart';

class CustomGridViewTile extends StatelessWidget {
  final String title;
  final double percentage;
  final String subtitle;
  final Color color;

  CustomGridViewTile(
      {@required this.title,
      @required this.percentage,
      @required this.subtitle,
      @required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(
                      value: percentage / 100,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      backgroundColor: Colors.white30,
                    ),
                  ),
                  Text(
                    percentage.toString() + "%",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white60, fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
