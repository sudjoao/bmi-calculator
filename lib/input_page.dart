import 'package:bmi_calculator/cardIncrease.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_component.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 180;
  int weight = 40;
  int age = 19;

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
                  child: ReusableCard(
                    color: selectedGender == GenderType.male
                        ? kActiveCardCoulor
                        : kInativeCardCoulor,
                    cardChild: GenderComponent(
                      genderIcon: FontAwesomeIcons.mars,
                      genderName: "MALE",
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == GenderType.female
                        ? kActiveCardCoulor
                        : kInativeCardCoulor,
                    cardChild: GenderComponent(
                      genderIcon: FontAwesomeIcons.venus,
                      genderName: "FEMALE",
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextLabel,
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
                        style: kTextLabel,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      thumbColor: Color(0xFFEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              CardIncrease(
                label: "WEIGHT",
                displayNumber: weight,
                onPressButton1: () {
                  setState(() {
                    weight--;
                  });
                },
                onPressButton2: () {
                  setState(() {
                    weight++;
                  });
                },
              ),
              CardIncrease(
                label: "AGE",
                displayNumber: age,
                onPressButton1: () {
                  setState(() {
                    age--;
                  });
                },
                onPressButton2: () {
                  setState(() {
                    age++;
                  });
                },
              ),
            ],
          )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
            child: Container(
              child: Text('CALCULATE'),
              alignment: Alignment.center,
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeigth,
            ),
          )
        ],
      ),
    );
  }
}
