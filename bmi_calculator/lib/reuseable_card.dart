import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color coloor;
  final Widget cardChild;
  final Function onPress;

  ReuseableCard({this.coloor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: coloor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
