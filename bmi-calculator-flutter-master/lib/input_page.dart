import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_contents.dart';
import 'reuseable_view.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableView(
                    colour: activeCardColour,
                    cardChild: IconContents(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableView(
                    colour: activeCardColour,
                    cardChild: IconContents(
                      iconData: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
              flex: 1,
              child: ReusableView(colour: activeCardColour),
            ),
            Expanded(
              flex: 1,
              child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableView(colour: activeCardColour),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableView(colour: activeCardColour),
                )
              ]),
            ),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
