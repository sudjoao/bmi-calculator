import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardCoulor,
              cardChild: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                child: SafeArea(
                  minimum: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'NORMAL',
                        style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '22.1',
                        style: kNumberTextStyle.copyWith(
                          fontSize: 80.0,
                        ),
                      ),
                      Text(
                        'Normal BMI range',
                        style: kTextLabel,
                      ),
                      Text('18,5 - 25 kg/m2'),
                      Text(
                        'You have a normal body weight. Good job!',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      FlatButton(
                        onPressed: () {},
                        color: kInativeCardCoulor,
                        padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 20.0),
                        child: Text('SAVE RESULT'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Text('RE-CALCULATE YOUR BMI'),
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
