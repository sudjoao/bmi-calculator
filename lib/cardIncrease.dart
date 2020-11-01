import 'package:flutter/material.dart';
import 'cardButton.dart';
import 'reusable_card.dart';
import 'constants.dart';

class CardIncrease extends StatelessWidget {
  final int displayNumber;
  final String label;
  final Function onPressButton1;
  final Function onPressButton2;

  CardIncrease(
      {@required this.label,
      @required this.displayNumber,
      @required this.onPressButton1,
      @required this.onPressButton2});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        color: Color(0xFF1D1E33),
        cardChild: Column(
          children: [
            Text(
              label,
              style: kTextLabel,
            ),
            Text(
              displayNumber.toString(),
              style: kNumberTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardButton(
                  buttonIcon: Icons.remove,
                  onPress: onPressButton1,
                ),
                CardButton(
                  buttonIcon: Icons.add,
                  onPress: onPressButton2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
