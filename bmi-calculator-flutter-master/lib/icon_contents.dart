import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const textStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class IconContents extends StatelessWidget {
  IconContents({@required this.iconData, this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
