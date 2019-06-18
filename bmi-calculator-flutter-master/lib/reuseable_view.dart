import 'package:flutter/material.dart';

class ReusableView extends StatelessWidget {
  ReusableView({@required this.colour, this.cardChild, this.tapHandler});

  final Color colour;
  final Widget cardChild;
  final Function tapHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapHandler,
      child: Container(
        margin: EdgeInsets.all(15),
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
