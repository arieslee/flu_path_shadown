import 'package:flutter/material.dart';

class NavButtonText extends StatelessWidget {
  final Icon icon;
  final String text;

  NavButtonText({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.icon,
        Text(
          this.text,
        ),
      ],
    );
  }
}
