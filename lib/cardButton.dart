import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final IconData buttonIcon;
  final Function onPress;
  CardButton({@required this.buttonIcon, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        buttonIcon,
        color: Colors.white,
      ),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
    );
  }
}
