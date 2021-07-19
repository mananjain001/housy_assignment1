import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          child: CircularProgressIndicator(
            strokeWidth: 5.0,
          ),
          height: 120,
          width: 120,
        ),
        SizedBox(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/image.jpg')),
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
