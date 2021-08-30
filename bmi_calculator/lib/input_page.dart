import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    coloor: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInActiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    coloor: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInActiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      gender: 'Female',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xffeb1555),
                      inactiveColor: Color(0xff8d8e98),
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              ),
              coloor: kActiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    coloor: kActiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    coloor: kActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffeb1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottonCOntainerHeight,
          )
        ],
      ),
    );
  }
}


 // Color maleCardColor = inActiveCardColour;
  // Color femaleCardColor = inActiveCardColour;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inActiveCardColour) {
  //       maleCardColor = activeCardColour;
  //       femaleCardColor = inActiveCardColour;
  //     } else {
  //       maleCardColor = inActiveCardColour;
  //     }
  //   }

  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inActiveCardColour) {
  //       femaleCardColor = activeCardColour;
  //       maleCardColor = inActiveCardColour;
  //     } else {
  //       femaleCardColor = inActiveCardColour;
  //     }
  //   }
  // }