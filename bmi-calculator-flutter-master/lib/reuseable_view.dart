import 'package:flutter/material.dart';

const activeCardColour = Color(0xFF1D1E33);

class ReusableView extends StatelessWidget {
  ReusableView({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: cardChild,
      decoration: BoxDecoration(
        color: activeCardColour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
